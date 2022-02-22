const express = require('express')
const DB_anime = require('../../DB_codes/DB_anime')
const DB_review = require('../../DB_codes/DB_review')
const DB_watchlist = require('../../DB_codes/DB_watchlist')
const DB_rating = require('../../DB_codes/DB_rating')
const router = express.Router({ mergeParams: true })

// /anime router
router.get('/:anime_id', async (req, res) => {
    const anime_id = req.params.anime_id;
    const username = req.session.userid;

    const anime = await DB_anime.getAnimeByID(anime_id);
    const genres = await DB_anime.getGenresByID(anime_id);
    const writer = await DB_anime.getWriterByID(anime.WRITER);
    const characters = await DB_anime.getCharactersOfAnime(anime_id);

    const watchlistData = await DB_watchlist.getWatchlistRowOfUserAndAnime(username, anime_id);
    const usersWatchlisted = await DB_watchlist.getCountWatchlisted(anime_id);
    const usersFavourited = await DB_watchlist.getCountFavourited(anime_id);
    const isAddedToWatchlist = watchlistData ? true : false;
    const isAddedToFavouriteList = (isAddedToWatchlist && watchlistData.FAVOURITED == 1) ? true : false;
    const userRating = await DB_rating.getUsersRatingOfAnime(username, anime_id);
    const userRatedThisAnime = userRating ? true : false;

    const data = {
        pageTitle: 'Anime',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        anime,
        genres,
        writer,
        characters,

        watchlistData,
        isAddedToWatchlist,
        isAddedToFavouriteList,
        usersWatchlisted,
        usersFavourited,

        userRating,
        userRatedThisAnime
    }
    //cleanup and stuff
    {
        if (!anime) return res.redirect('/error');
        await DB_rating.updateAnimeRating(anime_id);
        await DB_rating.updateAllAnimeRank();
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


router.post('/:anime_id/rating/post', async (req, res) => {
    const { username, anime_id, star } = req.body;

    const userAnimeRatingData = await DB_rating.getUsersRatingOfAnime(username, anime_id);

    if (!userAnimeRatingData) {
        await DB_rating.insertRating(username, anime_id, star);
    } else {
        await DB_rating.updateRating(username, anime_id, star);
    }
    await DB_rating.updateAnimeRating(anime_id);
    await DB_rating.updateAllAnimeRank();
    res.redirect('/anime/' + anime_id);
})


router.get('/:anime_id/characters/:charactername', async (req, res) => {
    const anime_id = req.params.anime_id;
    const characterFirstname = req.params.charactername.split("_")[0];
    const characterlastname = req.params.charactername.split("_")[1];

    //database query
    const character = await DB_anime.getCharacterByName(anime_id, characterFirstname, characterlastname);
    if (!character) res.redirect('/error')
    const data = {
        pageTitle: 'Character',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        character
    }
    res.render('characterprofile', data)
})


router.get('/:anime_id/episodes', async (req, res) => {
    const anime_id = req.params.anime_id;
    //database query
    const numSeasons = await DB_anime.getNumberOfSeasons(anime_id);
    const episodes = await DB_anime.getEpisodesOfAnime(anime_id);
    //error checking
    const data = {
        pageTitle: 'Episodes',
        isAuth: req.session.isAuth,
        username: req.session.userid,

        episodes,
        numSeasons
    }
    res.render('episodes', data)
})



module.exports = router