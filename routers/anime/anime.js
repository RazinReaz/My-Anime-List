const express = require('express')
const DB_anime = require('../../DB_codes/DB_anime')
const DB_review = require('../../DB_codes/DB_review')
const router = express.Router({ mergeParams: true })

// /anime router
router.get('/:anime_id', async (req, res) => {
    const anime_id = req.params.anime_id

    const anime = await DB_anime.getAnimeByID(anime_id)
    const genres = await DB_anime.getGenresByID(anime_id)
    const writer = await DB_anime.getWriterByID(anime.WRITER)

    const data = {
        pageTitle: 'Anime',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        anime,
        genres,
        writer
    }
    res.render('anime', data)
})



//!NEXT
router.get('/:anime_id/reviews', async (req, res) => {
    const anime_id = req.params.anime_id;
    const user = req.session.userid;
    let userReviewContent = "";
    const reviews = await DB_review.getAllReviewsOf(anime_id);
    const userReview = await DB_review.getUserReview(user, anime_id);
    const anime_title = (await DB_anime.getAnimeByID(anime_id)).ANIME_TITLE

    if (userReview) userReviewContent = userReview.CONTENT;

    const data = {
        pageTitle: 'Reviews',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        reviews,
        userReview,
        userReviewContent,
        anime_id,
        anime_title
    }
    res.render('review', data);
})



//!NEXT
router.post('/:anime_id/reviews', async (req, res) => {
    const anime_id = req.params.anime_id
    const reviewContent = req.body.reviewContent
    const user = req.body.username

    if (!req.session.isAuth) return res.redirect('/login');

    const userReview = await DB_review.getUserReview(user, anime_id);

    if (!userReview) {
        //!insert korte hobe
        const inserted_review_id = await DB_review.insertReview(reviewContent); //This line inserts the new review. reID returns the REVIEW_ID of the new row
        console.log(inserted_review_id);
        const handle_reviewed = await DB_review.insertIntoReviewRelation(user, anime_id, inserted_review_id)
    } else if (userReview) {
        //!update korte hobe
        const review_id = userReview.REVIEW_ID;

        await DB_review.updateReview(review_id, reviewContent)
    }

    res.redirect('/anime/' + anime_id + '/reviews');
})

module.exports = router