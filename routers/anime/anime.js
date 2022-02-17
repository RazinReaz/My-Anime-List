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



router.get('/:anime_id/reviews', async (req, res) => {
    const anime_id = req.params.anime_id;
    const user = req.session.userid;

    const reviews = await DB_review.getAllReviewsWithUserVotes(anime_id, user);
    const userReview = await DB_review.getUserReview(user, anime_id);
    const anime_title = (await DB_anime.getAnimeByID(anime_id)).ANIME_TITLE

    let userReviewContent = "";
    if (userReview) userReviewContent = userReview.CONTENT;

    //console.log(reviews)

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



router.post('/:anime_id/reviews', async (req, res) => {
    const anime_id = req.params.anime_id
    const reviewContent = req.body.reviewContent
    const user = req.body.username

    if (!req.session.isAuth) return res.redirect('/login');

    const userReview = await DB_review.getUserReview(user, anime_id);

    if (!userReview) {

        const inserted_review_id = await DB_review.insertReview(reviewContent); //This line inserts the new review. reID returns the REVIEW_ID of the new row
        console.log(inserted_review_id);
        const handle_reviewed = await DB_review.insertIntoReviewRelation(user, anime_id, inserted_review_id)

    } else if (userReview) {

        const review_id = userReview.REVIEW_ID;
        await DB_review.updateReview(review_id, reviewContent)

    }

    res.redirect('/anime/' + anime_id + '/reviews');
})


router.post('/:anime_id/reviews/delete', async (req, res) => {
    const { username, anime_id } = req.body;

    const remove_review_id = await DB_review.removeReviewFromReviewed(username, anime_id);
    //console.log(remove_review_id)
    const remove_review = await DB_review.removeReview(remove_review_id);
    //console.log(remove_review);

    res.redirect('/anime/' + anime_id + '/reviews');
})



router.post('/:anime_id/reviews/:review_id/vote', async (req, res) => {
    const anime_id = req.params.anime_id;
    const { username, review_id, vote_comment, vote_type } = req.body;
    if (vote_type == '1') {
        //insert vote
        await DB_review.insertVote(username, review_id, vote_comment);
        await DB_review.incrementVoteinReview(review_id);
    } else if (vote_type == '-1') {
        //delete vote
        await DB_review.deleteVote(username, review_id);
        await DB_review.decrementVoteinReview(review_id);
    }
    res.redirect('/anime/' + anime_id + '/reviews');
})



module.exports = router