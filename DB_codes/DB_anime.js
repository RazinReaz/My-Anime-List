const database = require('./database')

//return all info about 1 anime
async function getAnimeByID(anime_id){
    let sql = `
        select * 
        from ANIME 
        where Anime_id = :anime_id
    `
    return (await database.execute(sql, [anime_id], database.options)).rows[0]
}


async function getGenresByID(anime_id) {
    let sql = `
        select GENRE_NAME from ANIME_GENRE where Anime_id = :anime_id
    `
    return (await database.execute(sql, [anime_id], database.options)).rows
}


async function getWriterByID(PERSONNEL_ID) {
    let sql = `
        select * from WRITER where PERSONNEL_ID = :id
    `
    return (await database.execute(sql, [PERSONNEL_ID], database.options)).rows[0]
}

async function getAllAnimes () {
    let sql = `
        select ANIME_TITLE, ANIME_ID
        from anime
    `
    return (await database.execute(sql,[], database.options)).rows
}

module.exports = {
    getAnimeByID,
    getGenresByID,
    getWriterByID,
    getAllAnimes
}