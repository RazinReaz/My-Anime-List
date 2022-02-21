
const database = require('./database')


async function getUserInfoByUsername(username) {
    let sql = `
        SELECT USERNAME, EMAIL, JOIN_DATE, BIO, PICTURE_ID
        FROM ACCOUNT
        WHERE USERNAME = :USERNAME
    `
    return (await database.execute(sql, [username], database.options)).rows[0]
}



async function updateUserEmailandBio(username, email, bio) {
    let sql = `
    UPDATE ACCOUNT
    SET EMAIL = :EMAIL, BIO = :BIO
    WHERE USERNAME = :USERNAME
    `
    return (await database.execute(sql, [email, bio, username], database.options))
}

async function getFavouriteslistOfUser(username) {
    let sql = `
        SELECT 
            ANIME_ID,  
            (SELECT ANIME_TITLE FROM ANIME WHERE L.ANIME_ID = ANIME.ANIME_ID) AS TITLE,
            (SELECT PICTURE_ID FROM ANIME WHERE L.ANIME_ID = ANIME.ANIME_ID) AS PICTURE_ID, 
            FAVOURITED
        FROM WATCHED_LIST L
        WHERE L.USERNAME = :USERNAME AND FAVOURITED = 1
    `
    return (await database.execute(sql, [username], database.options)).rows
}

async function getWatchlistOfUser(username) {
    let sql = `
        SELECT 
            ANIME_ID, 
            (SELECT ANIME_TITLE FROM ANIME WHERE L.ANIME_ID = ANIME.ANIME_ID) AS TITLE,
            (SELECT PICTURE_ID FROM ANIME WHERE L.ANIME_ID = ANIME.ANIME_ID) AS PICTURE_ID,  
            FAVOURITED
        FROM WATCHED_LIST L
        WHERE L.USERNAME = :USERNAME
    `
    return (await database.execute(sql, [username], database.options)).rows
}

module.exports = {
    getUserInfoByUsername,
    updateUserEmailandBio,
    getFavouriteslistOfUser,
    getWatchlistOfUser
}
