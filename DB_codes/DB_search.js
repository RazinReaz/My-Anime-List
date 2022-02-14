const database = require('./database')


async function getAnimesByREGEX(string) {
    let sql = `
    SELECT ANIME_ID, ANIME_TITLE FROM ANIME WHERE LOWER(ANIME_TITLE) LIKE '${string[0]}'`
    for (let i = 1; i < string.length; i++) {
        sql += ` AND LOWER(ANIME_TITLE) LIKE '${string[i]}'`;
    }
    return (await database.execute(sql, [], database.options)).rows
}

async function getCharactersByREGEX(string) {
    let sql = `
        SELECT ANIME_ID, FIRST_NAME, LAST_NAME FROM CHARACTER
        WHERE (LOWER(FIRST_NAME) LIKE '${string[0]}' OR LOWER(LAST_NAME) LIKE '${string[0]}')
    `

    for (let i = 1; i < string.length; i++) {
        sql += ` OR (LOWER(FIRST_NAME) LIKE '${string[i]}' OR LOWER(LAST_NAME) LIKE '${string[i]}')`;
    }
    return (await database.execute(sql, [], database.options)).rows
}

async function getVoiceActorsByREGEX(string) {
    let sql = `
        SELECT PERSONNEL_ID, FIRST_NAME, LAST_NAME
        FROM VOICE_ACTOR
        WHERE (LOWER(FIRST_NAME) LIKE '${string[0]}' OR LOWER(LAST_NAME) LIKE '${string[0]}')
    `
    for (let i = 1; i < string.length; i++) {
        sql += ` OR (LOWER(FIRST_NAME) LIKE '${string[i]}' OR LOWER(LAST_NAME) LIKE '${string[i]}')`;
    }

    return (await database.execute(sql, [], database.options)).rows
}


async function getWritersByREGEX(string) {
    let sql = `
        SELECT PERSONNEL_ID, FIRST_NAME, LAST_NAME
        FROM WRITER
        WHERE (LOWER(FIRST_NAME) LIKE '${string[0]}' OR LOWER(LAST_NAME) LIKE '${string[0]}')
    `
    for (let i = 1; i < string.length; i++) {
        sql += ` OR (LOWER(FIRST_NAME) LIKE '${string[i]}' OR LOWER(LAST_NAME) LIKE '${string[i]}')`;
    }

    return (await database.execute(sql, [], database.options)).rows
}



module.exports = {
    getAnimesByREGEX,
    getCharactersByREGEX,
    getVoiceActorsByREGEX,
    getWritersByREGEX
}