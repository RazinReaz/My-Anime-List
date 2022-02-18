const express = require('express')
const DB_anime = require('../../DB_codes/DB_anime')
const DB_review = require('../../DB_codes/DB_review')
const DB_watchlist = require('../../DB_codes/DB_watchlist')
const router = express.Router({ mergeParams: true })

// /anime router
router.get('/:anime_id', async (req, res) => {
    const anime_id = req.params.anime_id;
    const username = req.session.userid;

    const anime = await DB_anime.getAnimeByID(anime_id);
    const genres = await DB_anime.getGenresByID(anime_id);
    const writer = await DB_anime.getWriterByID(anime.WRITER);

    const watchlistData = await DB_watchlist.getWatchlistRowOfUserAndAnime(username, anime_id);
    const isAddedToWatchlist = watchlistData ? true : false;
    const isAddedToFavouriteList = (isAddedToWatchlist && watchlistData.FAVOURITED == 1) ? true : false;

    const data = {
        pageTitle: 'Anime',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        anime,
        genres,
        writer,

        watchlistData,
        isAddedToWatchlist,
        isAddedToFavouriteList
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
    const remove_review = await DB_review.removeReview(remove_review_id);

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