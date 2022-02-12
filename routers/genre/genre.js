const express = require('express')
const DB_anime = require('../../DB_codes/DB_anime')
const router = express.Router({ mergeParams: true })

router.get('/:genre_name', async (req, res) => {
    const genre_name = req.params.genre_name;
    //database query
    const animes = await DB_anime.getAnimesTitleandIDByOneGenre(genre_name);
    //error checking
    const data = {
        pageTitle: 'MyAnimeList',
        username: req.session.userid,

        genre_name,
        animes
    }
    res.render('genre', data)
})

module.exports = router