const path = require('path')
const express = require('express')
const cookieParser = require("cookie-parser");
const sessions = require('express-session');

const database = require('../DB_codes/database')
const appRouter = require('../routers/appRouter')

const app = express()

const publicPath = path.join(__dirname, '../public')
const viewsPath = path.join(__dirname, '../templates/views')
const partialsPath = path.join(__dirname, '../templates/partials')

app.set('view engine', 'ejs')
app.set('views', viewsPath) //looks into the 'templates/views' folder


const oneDay = 1000 * 60 * 60 * 24;
app.use(sessions({
    secret: "thisismysecrctekey789",
    saveUninitialized: true,
    cookie: { maxAge: oneDay },
    resave: false
}));


app.use(express.json())
app.use(express.urlencoded({ extended: false }))
app.use(express.static(publicPath))
app.use(cookieParser());

app.use(appRouter)


const PORT = process.env.PORT || 3000

app.listen(PORT, async () => {
    try {
        await database.startup()
        console.log(`Server started on ${PORT}`)
    } catch (error) {
        console.log('Error starting the database')
        process.exit(1)
    }
})


process
    .once('SIGTERM', database.shutdown)
    .once('SIGINT', database.shutdown);