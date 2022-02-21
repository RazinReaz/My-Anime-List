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

//First it gets the top 4 genres the user prefers
//then it finds the anime ids with the most matches with those genres (COUNT(*) AS RECOMMENDATION)
//Then from that list, we exclude all the animes the user has already watched in the (<> ALL)
//and then we get picture ID and Title from the anime ids
async function getUserRecommendation(username) {
    let sql = `
SELECT ANIME_ID, RECOMMENDATION, (SELECT ANIME_TITLE FROM ANIME A WHERE R.ANIME_ID = A.ANIME_ID) AS TITLE, (SELECT PICTURE_ID FROM ANIME A WHERE R.ANIME_ID = A.ANIME_ID) AS PICTURE_ID
FROM 
(SELECT ANIME_ID, COUNT(*) AS RECOMMENDATION
FROM ANIME_GENRE 
	NATURAL JOIN 
	(SELECT GENRE_NAME FROM USER_PREFERENCE WHERE USERNAME = :username ORDER BY PREFERENCE_POINTS DESC FETCH NEXT 5 ROWS ONLY)
GROUP BY ANIME_ID
ORDER BY RECOMMENDATION DESC) R
WHERE ANIME_ID <> ALL(SELECT ANIME_ID FROM WATCHED_LIST WHERE USERNAME = :username)
FETCH NEXT 5 ROWS ONLY
    `
    return (await database.execute(sql, [username, username], database.options)).rows
}

module.exports = {
    getNewlyReleasedAnime,
    getTopAnimes,
    getUserRecommendation
}