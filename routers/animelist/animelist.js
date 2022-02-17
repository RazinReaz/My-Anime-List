const express = require('express')
const DB_anime = require('../../DB_codes/DB_anime') //!env.ROOT?
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


//searched for a specific anime

router.post('/', async (req, res) => {

    //Processing the search string
    let string = (req.body.search).toLowerCase().trim().split(" ");

    for (let i = 0; i < string.length; i++) {
        string[i] = '%' + string[i] + '%';
    }
    console.log(string);

    if (string.length == 0) return res.redirect('/')

    const animes = await DB_anime.getAnimesByREGEX(string);

    const data = {
        pageTitle: 'List of Animes',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        animes
    }
    console.log(animes);
    res.render('animelist', data);
})

module.exports = router