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
        FROM (SELECT * FROM REVIEWED WHERE ANIME_ID = :anime_id) JOIN REVIEW
        USING (REVIEW_ID)
    `
    return (await database.execute(sql, [anime_id], database.options)).rows
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



async function insertIntoReviewRelation(user, anime_id, review_id) {
    let sql = `
        INSERT INTO REVIEWED(USERNAME, ANIME_ID, REVIEW_ID)
        VALUES(:USERNAME, :ANIME_ID, :REVIEW_ID)
    `
    return (await database.execute(sql, [user, anime_id, review_id], database.options))
}


module.exports = {
    insertIntoTest,
    insertReview,
    updateReview,
    getAllReviewsOf,
    getUserReview,
    insertIntoReviewRelation
}
