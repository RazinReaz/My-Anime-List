const path = require('path')
const express = require('express')

const database = require('../DB_codes/database')
const appRouter = require('../routers/appRouter')

const app = express()

const publicPath = path.join(__dirname, '../public')
const viewsPath = path.join(__dirname, '../templates/views')
const partialsPath = path.join(__dirname, '../templates/partials')

app.set('view engine', 'ejs')
app.set('views', viewsPath) //looks into the 'templates/views' folder


app.use(express.json())
//app.use(express.urlencoded({extended : false}))
app.use(express.static(publicPath))

app.use(appRouter)


app.get('*', (req, res) =>{

    const data = {
        pageTitle : '404',
        creator : '',
        message : 'Requested page does not exist'
    }
    res.status(400).render('error', data)
})

//TODO ERROR REQUESTS


const PORT = process.env.PORT || 3000

app.listen(PORT, async () => {
    try {
        await database.startup()
        console.log(`Server started on ${PORT}`)
    }catch(error){
        console.log('Error starting the database')
        process.exit(1)
    }
})


process
    .once('SIGTERM', database.shutdown)
    .once('SIGINT', database.shutdown);