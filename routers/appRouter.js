const express = require('express')
const router = express.Router({ mergeParams: true });



//!require all sub routers
const loginRouter = require('./authentication/login')
const registerRouter = require('./authentication/register')
const logoutRouter = require('./authentication/logout')

const animeRouter = require('./anime/anime')
const animeListRouter = require('./animelist/animelist')
const searchTagsRouter = require('./searchtags/searchtags')
const genreRouter = require('./genre/genre')
const studioRouter = require('./studio/studio')



router.get('/', (req, res) => {
    res.render('index', {
        pageTitle: 'MyAnimeList',
        isAuth: req.session.isAuth,
        username: req.session.userid,
        message: 'This is the Home Page'
    })
})




//!set up sub routers
router.use('/anime', animeRouter)
router.use('/animelist', animeListRouter)
router.use('/login', loginRouter)
router.use('/register', registerRouter)
router.use('/logout', logoutRouter)
router.use('/searchtags', searchTagsRouter)
router.use('/genre', genreRouter)
router.use('/studio', studioRouter)



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