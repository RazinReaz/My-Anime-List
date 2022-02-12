const database = require('./database')

//return all info about 1 anime
async function getAnimeByID(anime_id) {
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

async function getAllAnimeTitleAndID() {
    let sql = `
        select ANIME_TITLE, ANIME_ID
        from anime
    `
    return (await database.execute(sql, [], database.options)).rows
}



async function getAnimesByGenreAndOrYear(genres, years) {
    let sqlgenre = `
        SELECT ANIME_ID FROM ANIME_GENRE WHERE GENRE_NAME = '${genres[0]}'`;
    for (let i = 1; i < genres.length; i++) {
        sqlgenre += `
        INTERSECT 
        (SELECT ANIME_ID FROM ANIME_GENRE WHERE GENRE_NAME = '${genres[i]}')`;
    }
    let sql = `
        SELECT * FROM ANIME 
        WHERE ANIME_ID = ANY(${sqlgenre})
    `

    if (years && years.length > 0) {
        sql += `and (TO_CHAR(RELEASE_DATE, 'YYYY') = ${years[0]}`
        for (let i = 1; i < years.length; i++) {
            sql += ` or TO_CHAR(RELEASE_DATE, 'YYYY') = ${years[i]}`
        }
        sql += `)`
    }
    return (await database.execute(sql, [], database.options)).rows;
}


async function getAnimesByYear(years) {
    if (years.length == 0) return console.log("no years found")

    let sql = `
        SELECT * FROM ANIME WHERE TO_CHAR(RELEASE_DATE, 'YYYY') = ${years[0]}`
    for (let i = 1; i < years.length; i++) {
        sql += ` OR TO_CHAR(RELEASE_DATE, 'YYYY') = ${years[i]}`
    }
    return (await database.execute(sql, [], database.options)).rows
}

async function getAllGenres() {
    let sql = `
        SELECT *
        FROM GENRE
    `
    return (await database.execute(sql, [], database.options)).rows
}

async function getAnimesTitleandIDByOneGenre(genre) {
    let sql = `
        SELECT *
        FROM ANIME JOIN ANIME_GENRE
        USING (ANIME_ID)
        WHERE GENRE_NAME = '${genre}'
    `
    return (await database.execute(sql, [], database.options)).rows
}


module.exports = {
    getAnimeByID,
    getGenresByID,
    getWriterByID,
    getAllAnimeTitleAndID,
    getAllGenres,
    getAnimesByGenreAndOrYear,
    getAnimesByYear,
    getAnimesTitleandIDByOneGenre
}