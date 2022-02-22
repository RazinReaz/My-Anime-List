# MY ANIME LIST
CSE 216 Term project by Razin and Labiba
(student id : 1805074 and 1805082)
This project uses node.js, express.js and oracle as the database

## How to run the project
+ **Setting up the database**
    the sql files is in the sql directory. The name of the user is *'abc'* with password *'abc'* with dba granted.
    To create this user, Open SQLPLUS and type :
    * connect sys as sysdba
    * [enter password]
    * alter session set "_ORACLE_SCRIPT" = true;
    * create user abc identified by abc;
    * grant dba to abc;
    The sql files can then be executed.
+ **Starting the server**
The code to start up the server is inside the src/app.js
To start up the server, Open the terminal and type:
  * `npm i` to install all the node modules
  * `npm run dev` will start the process of the server
  * wait for the console to print
    ```
    starting up database.  
    pool created  
    Server started on 3000  
    ```
+ **Viewing the webpage**
    Open the browser of your choice and type [http://localhost:3000/](http://localhost:3000/) to view my anime list
+ **Closing the project**
    Press `Ctrl + c` on the terminal and then press `Y`

## About the project
This is a project where you can search and find information about anything related to anime.
The features of the project include
### If you are not logged in
  * Search for Anime, Characters of Anime, Writers and Voice actors
  * Search for Anime by genre and year
  * Find Top Animes and Newly Released animes
  * Find all relevent information about a particular Anime
### If you are logged in
  * Add an anime to your watch list, and after your favourites list.
  * Rate Animes with 1-5 stars
  * Get recommendations of Animes based on your watch list and given rating
  * Write, update, delete reviews for animes. Upvote/downvote other user's reviews
  * Update and view your profile page

