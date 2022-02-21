const express = require('express');
const validator = require('validator')
const { redirect } = require('express/lib/response');
const DB_user = require('../../DB_codes/DB_user');
const DB_watchlist = require('../../DB_codes/DB_watchlist');
const router = express.Router({ mergeParams: true });


// '/user'

router.get('/', async (req, res) => {
    if (req.session.isAuth)
        return res.redirect('/user/' + req.session.userid);
    return res.redirect('/login');
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

    const watchlist = await DB_user.getWatchlistOfUser(username);

    const data = {
        pageTitle: 'Watchlist',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        animes: watchlist
    }
    res.render('watchlist', data)
})

router.get('/:username/favourites', async (req, res) => {
    const username = req.params.username;
    const loggedinAs = req.session.userid;

    if (!req.session.isAuth) return res.redirect('/login');
    if (username != loggedinAs) return res.redirect('/error');

    //database query
    const favouriteslist = await DB_user.getFavouriteslistOfUser(username);
    //error checking
    const data = {
        pageTitle: 'Favourites',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        animes: favouriteslist
    }
    res.render('watchlist', data);
})




router.post('/:username/update', async (req, res) => {
    const username = req.params.username;
    const loggedinAs = req.session.userid;

    if (!req.session.isAuth) return res.redirect('/login');
    if (username != loggedinAs) return res.redirect('/error');

    const { email, bio } = req.body;

    if (!validator.isEmail(email)) return res.redirect('/user');
    if (bio === '') return res.redirect('/user');
    //database query

    await DB_user.updateUserEmailandBio(username, email, bio);

    console.log("Successfully updated");

    res.redirect('/user');
})


//post to watchlist/add

//!TEST
router.post('/:username/watchlist/add', async (req, res) => {
    //return res.send(req.body);
    //!login kina check again?
    const { username, anime_id, type } = req.body;
    if (type == 'add') {
        await DB_watchlist.addToWatchlist(username, anime_id);
    } else if (type == 'favourite') {
        await DB_watchlist.addToFavourites(username, anime_id);
    } else if (type == 'unfavourite') {
        await DB_watchlist.unfavourite(username, anime_id);
    }
    res.redirect('/anime/' + anime_id);
    //res.redirect('/user/' + username + '/watchlist');
})
//post to update

module.exports = router