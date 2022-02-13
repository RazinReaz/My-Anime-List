const express = require('express')
const DB_studio = require('../../DB_codes/DB_studio')
const router = express.Router({ mergeParams: true })


// '/studio'

router.get('/', async (req, res) => {
    //database query
    const studios = await DB_studio.getAllStudios();
    console.log(studios)
    //error checking
    const data = {
        pageTitle: 'Studios',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        studios
    }
    res.render('studios', data)
})

router.get('/:studio_name', async (req, res) => {
    const studio_name = req.params.studio_name;
    //database query
    const studio = await DB_studio.getStudioByName(studio_name);
    const animes = await DB_studio.getAnimesByStudio(studio_name);
    //error checking
    console.log(studio)
    if (!studio) {
        return res.redirect('/error');
    }
    const data = {
        pageTitle: 'Studio',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        studio,
        animes
    }
    res.render('studio', data);
})

module.exports = router