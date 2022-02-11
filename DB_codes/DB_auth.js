const database = require('./database')


//GET SQL FUNCTIONS FOR ID AND PASSWORDS

async function getUserByUsername(username) {
    let sql = `
        select *
        from account
        where USERNAME = :username
    `
    return (await database.execute(sql, [username], database.options)).rows
}

async function insertAccountIntoDB(username, email, hashpassword) {
    let sql = `
        INSERT INTO
        ACCOUNT(
            USERNAME,
            EMAIL,
            JOIN_DATE,
            PASSWORD
        )
        VALUES(
            :USERNAME,
            :EMAIL,
            SYSDATE,
            :PASSWORD
        )
    `
    return (await database.execute(sql, [username, email, hashpassword], database.options))
}


module.exports = {
    getUserByUsername,
    insertAccountIntoDB
}