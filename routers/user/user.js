const express = require('express');
const { redirect } = require('express/lib/response');
const DB_user = require('../../DB_codes/DB_user')
const router = express.Router({ mergeParams: true })


// '/user'

router.get('/', async (req, res) => {
    if (req.session.isAuth)
        return res.redirect('/user/' + req.session.userid);
    return res.redirect('/login')
})



router.get('/:username', async (req, res) => {
    const username = req.params.username;
    const loggedinAs = req.session.userid;

    if (!req.session.isAuth) return res.redirect('/login')
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
    return res.send("Watch list");
    //database query
    const result = await
        //error checking
        //const data =
        res.render('', data)
})

module.exports = router