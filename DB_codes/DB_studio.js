const database = require('./database')


async function getStudioByName(studio_name) {
    let sql = `
        select *
        from STUDIO
        where STUDIO_NAME = :studio_name
    `
    return (await database.execute(sql, [studio_name], database.options)).rows[0]
}

async function getAllStudios() {
    let sql = `
        select STUDIO_NAME
        from STUDIO
    `
    return (await database.execute(sql, [], database.options)).rows
}

async function getAnimesByStudio(studio_name) {
    let sql = `
        select ANIME_ID, ANIME_TITLE, PICTURE_ID
        from ANIME
        where STUDIO_NAME = ':studio_name'
    `
    return (await database.execute(sql, [studio_name], database.options)).rows
}


async function getAnimesByStudio(studio_name) {
    let sql = `
        select ANIME_ID, ANIME_TITLE, PICTURE_ID
        from ANIME
        where STUDIO_NAME = :studio_name
    `
    return (await database.execute(sql, [studio_name], database.options)).rows
}


module.exports = {
    getStudioByName,
    getAnimesByStudio,
    getAllStudios
}
