const express = require('express')
const DB_others = require('../../DB_codes/DB_others')
const router = express.Router({ mergeParams: true })

// '/personnel' endpoint
router.get('/:personnel_id', async (req, res) => {
    const personnel_id = req.params.personnel_id;
    const personnel = await DB_others.getPersonnel(personnel_id);
    const writer = await DB_others.getWriter(personnel_id);
    const voiceActor = DB_others.getVoiceActor(personnel_id);

    let animes = [];
    let characters = [];

    if (writer) {
        animes = await DB_others.getAnimesByWriter(personnel_id);
    }
    if (voiceActor) {
        characters = await DB_others.getCharactersByVoiceActor(personnel_id);
    }

    if (!personnel) res.redirect('/error');

    const data = {
        pageTitle: 'MyAnimeList',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        personnel,
        writer,
        voiceActor,

        animes,
        characters
    }

    res.render('personnel', data)
})


module.exports = router