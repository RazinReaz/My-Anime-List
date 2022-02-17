const oracledb = require('oracledb');
const database = require('./database')

async function insertIntoTest(id) {
    let sql = `
        INSERT INTO TEST VALUES(:sid) RETURNING id INTO: ids 
    `
    const binds = {
        sid: id,
        ids: { type: oracledb.NUMBER, dir: oracledb.BIND_OUT }
    }
    return (await database.execute(sql, binds, database.options)).outBinds
}

async function getAllReviewsOf(anime_id) {
    let sql = `
        SELECT *
        FROM
            (SELECT * FROM (SELECT * FROM REVIEWED WHERE ANIME_ID = :anime_id) JOIN REVIEW
            USING (REVIEW_ID) 
            ORDER BY REVIEW.VOTES) LEFT OUTER JOIN VOTED USING (REVIEW_ID)
    `
    return (await database.execute(sql, [anime_id], database.options)).rows
}

async function getAllReviewsWithUserVotes(anime_id, username) {
    let sql = `
        SELECT *
        FROM
            (SELECT * FROM (SELECT * FROM REVIEWED WHERE ANIME_ID = :anime_id) JOIN REVIEW
            USING (REVIEW_ID)) R 
            LEFT OUTER JOIN 
            VOTED V ON (R.REVIEW_ID = V.REVIEW_ID AND V.USERNAME = :USERNAME)
        ORDER BY VOTES DESC
    `
    return (await database.execute(sql, [anime_id, username], database.options)).rows
}

async function getUserReview(username, anime_id) {
    let sql = `
        SELECT * FROM REVIEW
        WHERE REVIEW_ID = (SELECT REVIEW_ID 
            FROM REVIEWED 
            WHERE USERNAME = :USERNAME AND ANIME_ID = :ANIME_ID) 
    `
    return (await database.execute(sql, [username, anime_id], database.options)).rows[0]
}



//this function will enter new review into the DB and return the NEW REVIEW_ID
async function insertReview(reviewContent) {
    let sql = `
        INSERT INTO REVIEW (CONTENT, REVIEW_DATE, VOTES) 
        VALUES(:content, SYSDATE, 0) 
        RETURNING REVIEW_ID INTO :retID
    `

    const binds = {
        content: reviewContent,
        retID: { type: oracledb.NUMBER, dir: oracledb.BIND_OUT }
    }

    return (await database.execute(sql, binds, database.options)).outBinds.retID[0]
}

async function updateReview(review_id, content) {
    let sql = `
        UPDATE REVIEW SET CONTENT = :CONTENT WHERE REVIEW_ID = :REVIEW_ID
    `
    return (await database.execute(sql, [content, review_id], database.options))
}


async function removeReviewFromReviewed(username, anime_id) {
    let sql = `
        DELETE FROM REVIEWED WHERE USERNAME = :username AND ANIME_ID = :anime_id
        RETURNING REVIEW_ID INTO :review_id
    `

    const binds = {
        username: username,
        anime_id: anime_id,
        review_id: { type: oracledb.NUMBER, dir: oracledb.BIND_OUT }
    }

    return (await database.execute(sql, binds, database.options)).outBinds.review_id[0]
}

async function removeReview(review_id) {
    let sql = `
        DELETE 
        FROM REVIEW
        WHERE REVIEW_ID = :review_id
    `
    return (await database.execute(sql, [review_id], database.options))
}


async function insertIntoReviewRelation(user, anime_id, review_id) {
    let sql = `
        INSERT INTO REVIEWED(USERNAME, ANIME_ID, REVIEW_ID)
        VALUES(:USERNAME, :ANIME_ID, :REVIEW_ID)
    `
    return await database.execute(sql, [user, anime_id, review_id], database.options)
}


async function insertVote(username, review_id, vote_comment) {
    let sql = `
        INSERT INTO VOTED(USERNAME, REVIEW_ID, VOTE_COMMENT)
        VALUES(:USERNAME, :REVIEW_ID, :VOTE_COMMENT)
    `
    return (await database.execute(sql, [username, review_id, vote_comment], database.options)).rows
}

async function deleteVote(username, review_id) {
    let sql = `
        DELETE
        FROM VOTED
        WHERE USERNAME = :USERNAME AND REVIEW_ID = :REVIEW_ID
    `
    return (await database.execute(sql, [username, review_id], database.options)).rows
}

async function incrementVoteinReview(review_id) {
    let sql = `
        UPDATE REVIEW
        SET VOTES = VOTES + 1
        WHERE REVIEW_ID = :REVIEW_ID
    `
    return await database.execute(sql, [review_id], database.options)
}


async function decrementVoteinReview(review_id) {
    let sql = `
        UPDATE REVIEW
        SET VOTES = VOTES - 1
        WHERE REVIEW_ID = :REVIEW_ID
    `
    return await database.execute(sql, [review_id], database.options)
}

module.exports = {
    insertIntoTest,
    insertReview,
    updateReview,
    removeReview,
    removeReviewFromReviewed,
    getAllReviewsOf,
    getAllReviewsWithUserVotes,
    getUserReview,
    insertIntoReviewRelation,
    insertVote,
    deleteVote,
    incrementVoteinReview,
    decrementVoteinReview
}
