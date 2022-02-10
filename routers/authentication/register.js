const express = require('express')
const DB_anime = require('../../DB_codes/DB_auth')
const router = express.Router({ mergeParams: true })


router.get('/', async (req, res) => {
    //database query
    // const result = await ;
    //error checking
    // const data ;



    res.send('Register')
    //res.render('', data)
})

module.exports = router