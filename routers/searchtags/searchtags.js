const express = require('express')
const DB_anime = require('../../DB_codes/DB_anime')
const router = express.Router({ mergeParams: true })


function range(size, startAt = 0) {
    return [...Array(size).keys()].map(i => i + startAt);
}



//Loads the search by tags page from all genres
router.get('/', async (req, res) => {
    const genres = await DB_anime.getAllGenres()
    const years = range(33, 1990);
    const data = {
        pageTitle: 'MyAnimeList',
        isAuth: req.session.isAuth,
        username: req.session.userid,
        message: 'Search Animes By Tags',

        genres,
        years
    }
    res.render('searchtags', data);
})


router.post('/', async (req, res) => {
    let { genres, years } = req.body;

    if (typeof years == "string") years = [years]
    if (typeof genres == "string") genres = [genres]

    let result;
    if (genres && genres.length > 0) {
        result = await DB_anime.getAnimesByGenreAndOrYear(genres, years);
    } else if (years && years.length > 0) {
        result = await DB_anime.getAnimesByYear(years);
    }

    genres = await DB_anime.getAllGenres()
    years = range(33, 1990);
    const data = {
        pageTitle: 'MyAnimeList',
        isAuth: req.session.isAuth,
        username: req.session.userid,
        message: 'Search Animes By Tags',

        genres,
        years,
        animes: result
    }
    res.render('searchtags', data);
})


module.exports = router