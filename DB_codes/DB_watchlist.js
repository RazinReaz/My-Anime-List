const oracledb = require('oracledb');
const database = require('./database')


async function getFavouriteslistOfUser(username) {
    let sql = `
        SELECT ANIME_ID, (SELECT ANIME_TITLE FROM ANIME WHERE L.ANIME_ID = ANIME.ANIME_ID) AS TITLE, FAVOURITED
        FROM WATCHED_LIST L
        WHERE L.USERNAME = :USERNAME AND FAVOURITED = 1
    `
    return (await database.execute(sql, [username], database.options)).rows
}

async function getWatchlistOfUser(username) {
    let sql = `
        SELECT ANIME_ID, (SELECT ANIME_TITLE FROM ANIME WHERE L.ANIME_ID = ANIME.ANIME_ID) AS TITLE, FAVOURITED
        FROM WATCHED_LIST L
        WHERE L.USERNAME = :USERNAME
    `
    return (await database.execute(sql, [username], database.options)).rows
}

async function getWatchlistRowOfUserAndAnime(username, anime_id) {
    let sql = `
        SELECT *
        FROM WATCHED_LIST
        WHERE USERNAME = :USERNAME AND ANIME_ID = :ANIME_ID
    `
    return (await database.execute(sql, [username, anime_id], database.options)).rows[0]
}

async function addToWatchlist(username, anime_id) {
    let sql = `
        INSERT INTO 
        WATCHED_LIST(USERNAME, ANIME_ID, FAVOURITED)
        VALUES(:USERNAME, :ANIME_ID, 0)
    `
    return await database.execute(sql, [username, anime_id], database.options)
}

async function addToFavourites(username, anime_id) {
    let sql = `
        UPDATE WATCHED_LIST
        SET FAVOURITED = 1
        WHERE USERNAME = :USERNAME AND ANIME_ID = :ANIME_ID
    `
    return (await database.execute(sql, [username, anime_id], database.options))
}

async function unfavourite(username, anime_id) {
    let sql = `
        UPDATE WATCHED_LIST
        SET FAVOURITED = 0
        WHERE USERNAME = :USERNAME AND ANIME_ID = :ANIME_ID
    `
    return (await database.execute(sql, [username, anime_id], database.options)).rows
}

module.exports = {
    getFavouriteslistOfUser,
    getWatchlistOfUser,
    getWatchlistRowOfUserAndAnime,
    addToWatchlist,
    addToFavourites,
    unfavourite
}
