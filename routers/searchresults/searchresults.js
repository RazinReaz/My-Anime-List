const express = require('express')
const DB_search = require('../../DB_codes/DB_search')
const router = express.Router({ mergeParams: true })



router.post('/', async (req, res) => {
    //Processing the search string
    let string = (req.body.search).toLowerCase().trim().split(" ");
    for (let i = 0; i < string.length; i++) {
        string[i] = '%' + string[i] + '%';
    }
    if (string.length == 0) return res.redirect('/');


    const animes = await DB_search.getAnimesByREGEX(string);
    const characters = await DB_search.getCharactersByREGEX(string);
    const voiceactors = await DB_search.getVoiceActorsByREGEX(string);
    const writers = await DB_search.getWritersByREGEX(string);

    const data = {
        pageTitle: 'Search results',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        animes,
        characters,
        voiceactors,
        writers
    }
    res.render('searchresults', data);
})



router.get('/', async (req, res) => {
    return res.redirect('/');
})

module.exports = router;