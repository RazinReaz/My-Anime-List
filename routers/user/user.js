const express = require('express');
const validator = require('validator')
const { redirect } = require('express/lib/response');
const DB_user = require('../../DB_codes/DB_user');
const router = express.Router({ mergeParams: true });


// '/user'

router.get('/', async (req, res) => {
    if (req.session.isAuth)
        return res.redirect('/user/' + req.session.userid);
    return res.redirect('/login')
})



router.get('/:username', async (req, res) => {
    const username = req.params.username;
    const loggedinAs = req.session.userid;

    if (!req.session.isAuth) return res.redirect('/login');
    if (username != loggedinAs) return res.redirect('/error');

    //database query
    const userInfo = await DB_user.getUserInfoByUsername(username);

    //error checking
    const data = {
        pageTitle: 'Profile',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        userInfo
    }
    res.render('userprofile', data);
})



router.get('/:username/watchlist', async (req, res) => {
    const username = req.params.username;
    const loggedinAs = req.session.userid;

    if (!req.session.isAuth) return res.redirect('/login');
    if (username != loggedinAs) return res.redirect('/error');

    //database query
    const watchlist = await DB_user.getWatchlistOfUser(username)
    //error checking
    const data = {
        pageTitle: 'Watchlist',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        animes: watchlist
    }
    console.log(watchlist);
    res.render('watchlist', data)
})

router.get('/:username/favourites', async (req, res) => {
    const username = req.params.username;
    const loggedinAs = req.session.userid;

    if (!req.session.isAuth) return res.redirect('/login');
    if (username != loggedinAs) return res.redirect('/error');

    //database query
    const favouriteslist = await DB_user.getFavouriteslistOfUser(username)
    //error checking
    const data = {
        pageTitle: 'Favourites',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        animes: favouriteslist
    }
    res.render('watchlist', data)
})




router.post('/:username/update', async (req, res) => {
    const username = req.params.username;
    const loggedinAs = req.session.userid;

    if (!req.session.isAuth) return res.redirect('/login');
    if (username != loggedinAs) return res.redirect('/error');

    const { email, bio } = req.body;

    if (!validator.isEmail(email)) return res.redirect('/user')
    if (bio === '') return res.redirect('/user')
    //database query

    await DB_user.updateUserEmailandBio(username, email, bio);

    console.log("Successfully updated");

    res.redirect('/user')
})


//post to watchlist/add
//post to update

module.exports = router