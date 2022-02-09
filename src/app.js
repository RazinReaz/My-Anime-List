const path = require('path')
const express = require('express')

const database = require('../DB_codes/database')



const app = express()

const publicPath = path.join(__dirname, '../public')
const viewsPath = path.join(__dirname, '../templates/views')
const partialsPath = path.join(__dirname, '../templates/partials')

//setting up ejs
app.set('view engine', 'ejs')
app.set('views', viewsPath) //looks for the ejs files in the viewsPath, default path is 'views' but we dont have that in the root directory

app.use(express.json())
//handle for submission
//app.use(express.urlencoded({extended : false}))

//static folder
app.use(express.static(publicPath))

//using the api from routes
//app.use('/api/members', require('../routes/api/members'));




app.get('/',(req, res) => {
    res.render('index',{
        pageTitle : 'MyAnimeList',
        creator : 'MasterChief',
        amar_nam : 'mog er mulluk'
    })
})


app.get('/animelist', async (req, res) => {
    const sql = `
        select ANIME_TITLE, ANIME_ID 
        from ANIME
    `
    const result = await database.execute(sql, [], database.options)

    const data = {
        pageTitle: 'List of Animes',
        creator : 'Jakarta', //! more stuff here

        animes : result.rows
    }
    res.render('animelist', data)
})


app.get('/anime/:anime_id', async (req, res) => {
    const anime_id = req.params.anime_id
    let sql = `
        select * from ANIME where Anime_id = :anime_id
    `
    const anime = await database.execute(sql, [anime_id], database.options)

    sql = `
        select GENRE_NAME from ANIME_GENRE where Anime_id = :anime_id
    `
    const genres = await database.execute(sql, [anime_id], database.options)

    sql = `
        select * from WRITER where PERSONNEL_ID = :id
    `
    const writer = await database.execute(sql, [anime.rows[0].WRITER], database.options)
    
    const data = {
        //! more stuff here
        pageTitle : 'Anime',
        creator : '',

        anime : anime.rows[0],
        genres : genres.rows,
        writer : writer.rows[0]
    }
    res.render('anime', data)
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