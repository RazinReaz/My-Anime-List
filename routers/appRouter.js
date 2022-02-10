const express = require('express')
const router = express.Router({ mergeParams: true });


router.get('/test', (req, res) => {
    res.send('This is from file');
})






//!require all sub routers
const animeRouter = require('./anime/anime')
const animeListRouter = require('./animelist/animelist')
const loginRouter = require('./authentication/login')
const registerRouter = require('./authentication/register')




router.get('/', (req, res) => {
    res.render('index', {
        pageTitle: 'MyAnimeList',
        creator: 'MasterChief'
    })
})




//!set up sub routers
router.use('/anime', animeRouter)
router.use('/animelist', animeListRouter)
router.use('/users/login', loginRouter)
router.use('/users/register', registerRouter)

module.exports = router