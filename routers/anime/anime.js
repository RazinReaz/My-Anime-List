const express = require('express')
const DB_anime = require('../../DB_codes/DB_anime') 
const router = express.Router({ mergeParams: true })


router.get('/:anime_id', async (req, res) => {
    const anime_id = req.params.anime_id
    
    const anime = await DB_anime.getAnimeByID(anime_id)
    const genres = await DB_anime.getGenresByID(anime_id)
    const writer = await DB_anime.getWriterByID(anime.WRITER)

    const data = {
        //! more stuff here
        pageTitle: 'Anime',
        creator: '',

        anime,
        genres,
        writer
    }
    res.render('anime', data)
})

module.exports = router