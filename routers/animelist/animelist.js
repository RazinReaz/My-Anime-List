const express = require('express')
const DB_anime = require('../../DB_codes/DB_anime')
const DB_list = require('../../DB_codes/DB_homepage')
const router = express.Router({ mergeParams: true })


router.get('/', async (req, res) => {
    const animeList = await DB_anime.getAllAnimeTitleAndID()
    const data = {
        pageTitle: 'List of Animes',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        animes: animeList
    }
    res.render('animelist', data)
})

router.get('/new', async (req, res) => {
    const newAnimes = await DB_list.getAllNewlyReleasedAnime();
    const data = {
        pageTitle: 'List of Newly released Animes',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        animes: newAnimes
    }
    res.render('animelist', data)
})

router.get('/top', async (req, res) => {
    const topAnimes = await DB_list.getAllTopAnimes();
    const data = {
        pageTitle: 'List of Top Animes',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        animes: topAnimes
    }
    res.render('animelist', data)
})

router.get('/recommendation', async (req, res) => {
    const recommendations = await DB_list.getAllUserRecommendation(req.session.userid);
    const data = {
        pageTitle: 'Recommendations',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        animes: recommendations
    }
    res.render('animelist', data)
})


//searched for a specific anime

router.post('/', async (req, res) => {

    //Processing the search string
    let string = (req.body.search).toLowerCase().trim().split(" ");

    for (let i = 0; i < string.length; i++) {
        string[i] = '%' + string[i] + '%';
    }

    if (string.length == 0) return res.redirect('/')

    const animes = await DB_anime.getAnimesByREGEX(string);

    const data = {
        pageTitle: 'List of Animes',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        animes
    }
    res.render('animelist', data);
})

module.exports = router