const database = require('./database')

async function getNewlyReleasedAnime() {
    let sql = `
        SELECT ANIME_ID, ANIME_TITLE, PICTURE_ID
        FROM ANIME
        ORDER BY RELEASE_DATE DESC, AVG_RATING DESC
        FETCH NEXT 4 ROWS ONLY
    `
    return (await database.execute(sql, [], database.options)).rows
}


async function getTopAnimes() {
    let sql = `
        SELECT ANIME_ID, ANIME_TITLE, PICTURE_ID
        FROM ANIME
        ORDER BY AVG_RATING DESC
        FETCH NEXT 4 ROWS ONLY
    `
    return (await database.execute(sql, [], database.options)).rows
}

module.exports = {
    getNewlyReleasedAnime,
    getTopAnimes
}