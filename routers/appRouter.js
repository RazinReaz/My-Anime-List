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
const logoutRouter = require('./authentication/logout')




router.get('/', (req, res) => {
    res.render('index', {
        pageTitle: 'MyAnimeList',
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



router.get('*', (req, res) => {

    const data = {
        pageTitle: '404',
        username: '',
        message: 'Requested page does not exist'
    }
    res.status(400).render('error', data)
})

module.exports = router