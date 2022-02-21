const database = require('./database')

async function getUsersRatingOfAnime(username, anime_id) {
    let sql = `
        SELECT * 
        FROM USER_ANIME_STAR
        WHERE USERNAME = :USERNAME AND ANIME_ID = :ANIME_ID
    `
    return (await database.execute(sql, [username, anime_id], database.options)).rows[0]
}

async function insertRating(username, anime_id, star) {
    let sql = `
        INSERT INTO USER_ANIME_STAR(USERNAME, ANIME_ID, STAR)
        VALUES(:USERNAME, :ANIME_ID, :STAR)
    `
    return await database.execute(sql, [username, anime_id, star], database.options)
}

async function updateRating(username, anime_id, star) {
    let sql = `
        UPDATE USER_ANIME_STAR
        SET STAR = :STAR
        WHERE USERNAME = :USERNAME AND ANIME_ID = :ANIME_ID
    `
    return (await database.execute(sql, [star, username, anime_id], database.options)).rows
}

async function updateAnimeRating(anime_id) {
    let sql = `
        BEGIN
            UPDATE_ANIME_RATING(:ANIME_ID);
        END;
    `
    return await database.execute(sql, [anime_id], database.options)
}
async function updateAllAnimeRank() {
    let sql = `
        BEGIN
            UPDATE_ALL_ANIME_RANK;
        END;
    `
    return await database.execute(sql, [], database.options)
}

module.exports = {
    getUsersRatingOfAnime,
    insertRating,
    updateRating,
    updateAllAnimeRank,
    updateAnimeRating
}