const database = require('./database')


async function getUserInfoByUsername(username) {
    let sql = `
        SELECT USERNAME, EMAIL, JOIN_DATE, BIO, PICTURE_ID
        FROM ACCOUNT
        WHERE USERNAME = :USERNAME
    `
    return (await database.execute(sql, [username], database.options)).rows
}

module.exports = {
    getUserInfoByUsername
}
