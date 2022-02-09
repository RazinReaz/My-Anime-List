const express = require('express')
const DB_anime = require('../../DB_codes/DB_anime') //!env.ROOT?
const router = express.Router({ mergeParams: true })


router.get('/', async (req, res) => {

    const animeList = await DB_anime.getAllAnimes()

    const data = {
        pageTitle: 'List of Animes',
        creator: 'Razin', //! more stuff here

        animes: animeList
    }
    res.render('animelist', data)
})


module.exports = router