const express = require('express')
const router = express.Router({ mergeParams: true });


router.get('/test', (req, res) => {
    res.send('This is from file');
})






//!require all sub routers
const animeRouter = require('./anime/anime')
const animeListRouter = require('./animelist/animelist')





router.get('/', (req, res) => {
    res.render('index', {
        pageTitle: 'MyAnimeList',
        creator: 'MasterChief',
        amar_nam: 'mog er mulluk'
    })
})




//!set up sub routers
router.use('/anime', animeRouter)
router.use('/animelist', animeListRouter)

module.exports = router