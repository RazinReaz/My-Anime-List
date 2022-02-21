const database = require('./database')

async function getPersonnel(personnel_id) {
    let sql = `
        SELECT *
        FROM PERSONNEL
        WHERE PERSONNEL_ID  = :ID
    `
    return (await database.execute(sql, [personnel_id], database.options)).rows[0]
}


async function getWriter(personnel_id) {
    let sql = `
        SELECT *
        FROM WRITER
        WHERE PERSONNEL_ID  = :ID
    `
    return (await database.execute(sql, [personnel_id], database.options)).rows[0]
}



async function getVoiceActor(personnel_id) {
    let sql = `
        SELECT *
        FROM VOICE_ACTOR
        WHERE PERSONNEL_ID  = :ID
    `
    return (await database.execute(sql, [personnel_id], database.options)).rows[0]
}

async function getAnimesByWriter(personnel_id) {
    let sql = `
        SELECT *
        FROM ANIME 
        WHERE WRITER  = :ID
    `
    return (await database.execute(sql, [personnel_id], database.options)).rows
}


async function getCharactersByVoiceActor(personnel_id) {
    let sql = `
        SELECT *
        FROM CHARACTER
        WHERE VOICE_ACTOR_ID = :ID
    `
    return (await database.execute(sql, [personnel_id], database.options)).rows
}


module.exports = {
    getPersonnel,
    getVoiceActor,
    getWriter,
    getAnimesByWriter,
    getCharactersByVoiceActor
}