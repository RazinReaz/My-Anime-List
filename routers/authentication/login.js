const express = require('express')
const bcrypt = require('bcrypt')
const DB_auth = require('../../DB_codes/DB_auth')
const router = express.Router({ mergeParams: true })


router.get('/', async (req, res) => {
    if (req.session.isAuth) {
        res.redirect('/');
    }
    res.render('login', { message: 'Please provide info' })
})

router.post('/', async (req, res) => {
    const { username, password } = req.body;
    const user = await DB_auth.getUserByUsername(username);
    const userExists = user.length == 0 ? false : true;
    if (!userExists) {
        return res.render('login', { message: 'Error logging in' })
    }

    const passwordMatch = await bcrypt.compare(password, user[0].PASSWORD)
    if (!passwordMatch) {
        return res.render('login', { message: 'Error logging in' })
    }
    var session = req.session;
    session.userid = req.body.username;
    req.session.isAuth = true;
    res.redirect('/');
})

module.exports = router