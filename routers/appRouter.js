const express = require('express')
const router = express.Router({ mergeParams: true });
const DB_homepage = require('../DB_codes/DB_homepage');



//!require all sub routers
const loginRouter = require('./authentication/login')
const registerRouter = require('./authentication/register')
const logoutRouter = require('./authentication/logout')

const animeRouter = require('./anime/anime')
const animeListRouter = require('./animelist/animelist')
const searchTagsRouter = require('./searchtags/searchtags')
const searchResultsRouter = require('./searchresults/searchresults.js')
const genreRouter = require('./genre/genre')
const studioRouter = require('./studio/studio')
const personnelRouter = require('./personnel/personnel')

const userRouter = require('./user/user')



//!HOME PAGE
router.get('/', async (req, res) => {
    const username = req.session.userid;
    const newlyReleased = await DB_homepage.getNewlyReleasedAnime();
    const topAnimes = await DB_homepage.getTopAnimes();

    let recommendation = []
    if (req.session.isAuth)
        recommendation = await DB_homepage.getUserRecommendation(username)
    console.log(recommendation)
    const data = {
        pageTitle: 'MyAnimeList',
        isAuth: req.session.isAuth,
        username: req.session.userid,
        message: 'This is the Home Page',

        newlyReleased,
        topAnimes,
        recommendation
    }
    res.render('index', data)
})




//!set up sub routers
router.use('/anime', animeRouter)
router.use('/animelist', animeListRouter)
router.use('/login', loginRouter)
router.use('/register', registerRouter)
router.use('/logout', logoutRouter)
router.use('/searchtags', searchTagsRouter)
router.use('/searchresults', searchResultsRouter)
router.use('/genre', genreRouter)
router.use('/studio', studioRouter)
router.use('/user', userRouter)
router.use('/personnel', personnelRouter)



//!ERRORS

router.get('*', (req, res) => {
    const data = {
        pageTitle: '404',
        isAuth: req.session.isAuth,
        username: req.session.userid,
        message: 'Requested page does not exist'
    }
    res.status(400).render('error', data)
})

router.get('/error', (req, res) => {

    const data = {
        pageTitle: '404',
        isAuth: req.session.isAuth,
        username: req.session.userid,
        message: 'Requested page does not exist'
    }
    res.status(400).render('error', data)
})

module.exports = router