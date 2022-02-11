const express = require('express')
const DB_anime = require('../../DB_codes/DB_auth')
const router = express.Router({ mergeParams: true })

router.get('/', (req, res) => {
    req.session.destroy();
    res.redirect('/');
});

module.exports = router