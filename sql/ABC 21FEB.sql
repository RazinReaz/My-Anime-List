/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : Oracle
 Source Server Version : 190000
 Source Host           : localhost:1521
 Source Schema         : ABC

 Target Server Type    : Oracle
 Target Server Version : 190000
 File Encoding         : 65001

 Date: 21/02/2022 07:35:56
*/


-- ----------------------------
-- Table structure for ACCOUNT
-- ----------------------------
DROP TABLE "ABC"."ACCOUNT";
CREATE TABLE "ABC"."ACCOUNT" (
  "USERNAME" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "BIO" VARCHAR2(50 BYTE) VISIBLE,
  "EMAIL" VARCHAR2(30 BYTE) VISIBLE NOT NULL,
  "JOIN_DATE" DATE VISIBLE,
  "PICTURE_ID" VARCHAR2(50 BYTE) VISIBLE,
  "PASSWORD" VARCHAR2(100 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ACCOUNT
-- ----------------------------
INSERT INTO "ABC"."ACCOUNT" VALUES ('razin', 'I like trains
', 'razin@gmail.com', TO_DATE('2022-02-11 19:37:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '$2b$04$tfU9iRSfc.BoLMHo8T6WV..bt4XiEYBsUu5U.N2JxniD2EgFpCs2e');
INSERT INTO "ABC"."ACCOUNT" VALUES ('forhad', NULL, 'forhad@gmail.com', TO_DATE('2022-02-11 19:51:40', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '$2b$04$/ZB.jJKB4HCZBTgeli0aS.CBEGF/W58.LXZSlMq6BtDOio2pfXqq6');
INSERT INTO "ABC"."ACCOUNT" VALUES ('john', NULL, 'nhoj@hotmail.com', TO_DATE('2022-02-17 19:15:39', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '$2b$04$xsM4ThRUftjZdXq4jAEvBOFXyYuT/xnB5Vj0qtgF3Lal4/6bfjsw6');

-- ----------------------------
-- Table structure for ANIME
-- ----------------------------
DROP TABLE "ABC"."ANIME";
CREATE TABLE "ABC"."ANIME" (
  "ANIME_ID" NUMBER VISIBLE DEFAULT "ABC"."ANIME_ID_SEQ"."NEXTVAL" NOT NULL,
  "ANIME_TITLE" VARCHAR2(30 BYTE) VISIBLE,
  "SYNOPSIS" VARCHAR2(1000 BYTE) VISIBLE,
  "PICTURE_ID" VARCHAR2(50 BYTE) VISIBLE,
  "RELEASE_DATE" DATE VISIBLE,
  "RELEASE_SEASON" VARCHAR2(20 BYTE) VISIBLE,
  "STUDIO_NAME" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "WRITER" NUMBER(6,0) VISIBLE NOT NULL,
  "AVG_RATING" NUMBER(5,3) VISIBLE,
  "RANK" NUMBER VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ANIME
-- ----------------------------
INSERT INTO "ABC"."ANIME" VALUES ('1000', 'Attack On Titan', 'Centuries ago, mankind was slaughtered to near extinction by monstrous humanoid creatures called titans, forcing humans to hide in fear behind enormous concentric walls. What makes these giants truly terrifying is that their taste for human flesh is not born out of hunger but what appears to be out of pleasure. To ensure their survival, the remnants of humanity began living within defensive barriers, resulting in one hundred years without a single titan encounter. However, that fragile calm is soon shattered when a colossal titan manages to breach the supposedly impregnable outer wall, reigniting the fight for survival against the man-eating abominations.', 'aot', TO_DATE('2013-01-20 13:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Spring', 'Wit Studio', '104', '5', '2');
INSERT INTO "ABC"."ANIME" VALUES ('1001', 'Naruto', 'Moments prior to Naruto Uzumaki''s birth, a huge demon known as the Kyuubi, the Nine-Tailed Fox, attacked Konohagakure, the Hidden Leaf Village, and wreaked havoc. In order to put an end to the Kyuubi''s rampage, the leader of the village, the Fourth Hokage, sacrificed his life and sealed the monstrous beast inside the newborn Naruto.

Now, Naruto is a hyperactive and knuckle-headed ninja still living in Konohagakure. Shunned because of the Kyuubi inside him, Naruto struggles to find his place in the village, while his burning desire to become the Hokage of Konohagakure leads him not only to some great new friends, but also some deadly foes.', 'naruto', TO_DATE('2007-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Winter', 'Pierro', '100', '4', '4');
INSERT INTO "ABC"."ANIME" VALUES ('1002', 'Steins;Gate', 'The self-proclaimed mad scientist Rintarou Okabe rents out a room in a rickety old building in Akihabara, where he indulges himself in his hobby of inventing prospective "future gadgets" with fellow lab members: Mayuri Shiina, his air-headed childhood friend, and Hashida Itaru, a perverted hacker nicknamed "Daru." The three pass the time by tinkering with their most promising contraption yet, a machine dubbed the "Phone Microwave," which performs the strange function of morphing bananas into piles of green gel.

Though miraculous in itself, the phenomenon doesn''t provide anything concrete in Okabe''s search for a scientific breakthrough; that is, until the lab members are spurred into action by a string of mysterious happenings before stumbling upon an unexpected success—the Phone Microwave can send emails to the past, altering the flow of history.', 'steins.', TO_DATE('2011-04-06 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Spring', 'White Fox', '100', '5', '1');
INSERT INTO "ABC"."ANIME" VALUES ('1003', 'Hataraku Maou-sama', 'Striking fear into the hearts of mortals, the Demon Lord Satan begins to conquer the land of Ente Isla with his vast demon armies. However, while embarking on this brutal quest to take over the continent, his efforts are foiled by the hero Emilia, forcing Satan to make his swift retreat through a dimensional portal only to land in the human world. Along with his loyal general Alsiel, the demon finds himself stranded in modern-day Tokyo and vows to return and complete his subjugation of Ente Isla—that is, if they can find a way back!

Powerless in a world without magic, Satan assumes the guise of a human named Sadao Maou and begins working at MgRonald''s—a local fast-food restaurant—to make ends meet. He soon realizes that his goal of conquering Ente Isla is just not enough as he grows determined to climb the corporate ladder and become the ruler of Earth, one satisfied customer at a time!', 'hms', TO_DATE('2013-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Spring', 'White Fox', '105', '4', '5');
INSERT INTO "ABC"."ANIME" VALUES ('1004', 'Sword Art Online', 'In the year 2022, virtual reality has progressed by leaps and bounds, and a massive online role-playing game called Sword Art Online (SAO) is launched. With the aid of "NerveGear" technology, players can control their avatars within the game using nothing but their own thoughts.

Kazuto Kirigaya, nicknamed "Kirito," is among the lucky few enthusiasts who get their hands on the first shipment of the game. He logs in to find himself, with ten-thousand others, in the scenic and elaborate world of Aincrad, one full of fantastic medieval weapons and gruesome monsters. However, in a cruel turn of events, the players soon realize they cannot log out; the game''s creator has trapped them in his new world until they complete all one hundred levels of the game.', 'sao', TO_DATE('2016-06-04 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Summer', 'A-1 Pictures', '104', '3', '17');
INSERT INTO "ABC"."ANIME" VALUES ('1005', 'Boku Dake Ga Inai Machi', 'When tragedy is about to strike, Satoru Fujinuma finds himself sent back several minutes before the accident occurs. The detached, 29-year-old manga artist has taken advantage of this powerful yet mysterious phenomenon, which he calls "Revival," to save many lives.

However, when he is wrongfully accused of murdering someone close to him, Satoru is sent back to the past once again, but this time to 1988, 18 years in the past. Soon, he realizes that the murder may be connected to the abduction and killing of one of his classmates, the solitary and mysterious Kayo Hinazuki, that took place when he was a child. This is his chance to make things right.', 'bdgim', TO_DATE('2013-03-14 22:35:06', 'SYYYY-MM-DD HH24:MI:SS'), 'Winter', 'A-1 Pictures', '104', '0', '16');
INSERT INTO "ABC"."ANIME" VALUES ('1012', 'Bleach', 'Ichigo Kurosaki is an ordinary high schooler—until his family is attacked by a Hollow, a corrupt spirit that seeks to devour human souls. It is then that he meets a Soul Reaper named Rukia Kuchiki, who gets injured while protecting Ichigo''s family from the assailant. To save his family, Ichigo accepts Rukia''s offer of taking her powers and becomes a Soul Reaper as a result.

However, as Rukia is unable to regain her powers, Ichigo is given the daunting task of hunting down the Hollows that plague their town. However, he is not alone in his fight, as he is later joined by his friends—classmates Orihime Inoue, Yasutora Sado, and Uryuu Ishida—who each have their own unique abilities. As Ichigo and his comrades get used to their new duties and support each other on and off the battlefield, the young Soul Reaper soon learns that the Hollows are not the only real threat to the human world.', 'bleach', TO_DATE('2004-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Winter', 'Pierro', '108', '0', '15');
INSERT INTO "ABC"."ANIME" VALUES ('1013', 'Tokyo Ghoul', 'A sinister threat is invading Tokyo: flesh-eating "ghouls" who appear identical to humans and blend into their population. Reserved college student Ken Kaneki buries his nose in books and avoids the news of the growing crisis. However, the appearance of an attractive woman named Rize Kamishiro shatters his solitude when she forwardly asks him on a date.

While walking Rize home, Kaneki discovers she isn''t as kind as she first appeared, and she has led him on with sinister intent. After a tragic struggle, he later awakens in a hospital to learn his life was saved by transplanting the now deceased Rize''s organs into his own body.', 'tghoul', TO_DATE('2014-06-04 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Summer', 'Pierro', '103', '5', '3');
INSERT INTO "ABC"."ANIME" VALUES ('1014', 'Black Clover', 'Asta and Yuno were abandoned at the same church on the same day. Raised together as children, they came to know of the "Wizard King"—a title given to the strongest mage in the kingdom—and promised that they would compete against each other for the position of the next Wizard King. However, as they grew up, the stark difference between them became evident. While Yuno is able to wield magic with amazing power and control, Asta cannot use magic at all and desperately tries to awaken his powers by training physically.', 'bclover', TO_DATE('2017-05-30 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Fall', 'Pierro', '102', '0', '18');
INSERT INTO "ABC"."ANIME" VALUES ('1015', 'Violet Evergarden', 'The Great War finally came to an end after four long years of conflict; fractured in two, the continent of Telesis slowly began to flourish once again. Caught up in the bloodshed was Violet Evergarden, a young girl raised for the sole purpose of decimating enemy lines. Hospitalized and maimed in a bloody skirmish during the War''s final leg, she was left with only words from the person she held dearest, but with no understanding of their meaning.

Recovering from her wounds, Violet starts a new life working at CH Postal Services after a falling out with her new intended guardian family. There, she witnesses by pure chance the work of an "Auto Memory Doll," amanuenses that transcribe people''s thoughts and feelings into words on paper. Moved by the notion, Violet begins work as an Auto Memory Doll, a trade that will take her on an adventure, one that will reshape the lives of her clients and hopefully lead to self-discovery.', 'evergarden', TO_DATE('2018-01-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Winter', 'Kyoto Animation', '110', '0', '13');
INSERT INTO "ABC"."ANIME" VALUES ('1016', 'Hyouka', 'High school freshman Houtarou Oreki has but one goal: to lead a gray life while conserving as much energy as he can. Unfortunately, his peaceful days come to an end when his older sister, Tomoe, forces him to save the memberless Classics Club from disbandment.

Luckily, Oreki''s predicament seems to be over when he heads to the clubroom and discovers that his fellow first-year, Eru Chitanda, has already become a member. However, despite his obligation being fulfilled, Oreki finds himself entangled by Chitanda''s curious and bubbly personality, soon joining the club of his own volition.', 'hyouka', TO_DATE('2012-04-12 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Spring', 'Kyoto Animation', '102', '0', '6');
INSERT INTO "ABC"."ANIME" VALUES ('1017', 'K-On', 'A fresh high school year always means much to come, and one of those things is joining a club. Being in a dilemma about which club to join, Yui Hirasawa stumbles upon and applies for the Light Music Club, which she misinterprets to be about playing simple instruments, such as castanets. Unable to play an instrument, she decides to visit to apologize and quit.

Meanwhile, the Light Music Club faces disbandment due to a lack of members. This causes the club members to offer anything, from food to slacking off during club time, in order to convince Yui to join. Despite their efforts, Yui insists on leaving due to her lack of musical experience. As a last resort, they play a piece for Yui, which sparks her fiery passion and finally convinces her to join the club.', 'kon', TO_DATE('2009-04-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Spring', 'Kyoto Animation', '109', '0', '7');
INSERT INTO "ABC"."ANIME" VALUES ('1006', 'Code Geass', 'In the year 2010, the Holy Empire of Britannia is establishing itself as a dominant military nation, starting with the conquest of Japan. Renamed to Area 11 after its swift defeat, Japan has seen significant resistance against these tyrants in an attempt to regain independence.

Lelouch Lamperouge, a Britannian student, unfortunately finds himself caught in a crossfire between the Britannian and the Area 11 rebel armed forces. He is able to escape, however, thanks to the timely appearance of a mysterious girl named C.C., who bestows upon him Geass, the "Power of Kings." Realizing the vast potential of his newfound "power of absolute obedience," Lelouch embarks upon a perilous journey as the masked vigilante known as Zero, leading a merciless onslaught against Britannia in order to get revenge once and for all.', 'geass', TO_DATE('2005-09-29 01:41:17', 'SYYYY-MM-DD HH24:MI:SS'), 'Fall', 'Sunrise', '110', '0', '8');
INSERT INTO "ABC"."ANIME" VALUES ('1007', 'One Piece', 'Gol D. Roger was known as the "Pirate King," the strongest and most infamous being to have sailed the Grand Line. The capture and execution of Roger by the World Government brought a change throughout the world. His last words before his death revealed the existence of the greatest treasure in the world, One Piece. It was this revelation that brought about the Grand Age of Pirates, men who dreamed of finding One Piece—which promises an unlimited amount of riches and fame—and quite possibly the pinnacle of glory and the title of the Pirate King.', '1piece', TO_DATE('1990-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Winter', 'Sunrise', '111', '0', '9');
INSERT INTO "ABC"."ANIME" VALUES ('1008', 'Gintama', 'Gintoki, Shinpachi, and Kagura return as the fun-loving but broke members of the Yorozuya team! Living in an alternate-reality Edo, where swords are prohibited and alien overlords have conquered Japan, they try to thrive on doing whatever work they can get their hands on. However, Shinpachi and Kagura still haven''t been paid... Does Gin-chan really spend all that cash playing pachinko?

Meanwhile, when Gintoki drunkenly staggers home one night, an alien spaceship crashes nearby. A fatally injured crew member emerges from the ship and gives Gintoki a strange, clock-shaped device, warning him that it is incredibly powerful and must be safeguarded. Mistaking it for his alarm clock, Gintoki proceeds to smash the device the next morning and suddenly discovers that the world outside his apartment has come to a standstill. With Kagura and Shinpachi at his side, he sets off to get the device fixed; though, as usual, nothing is ever that simple for the Yorozuya team.', 'gintama', TO_DATE('1995-01-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Spring', 'Sunrise', '112', '0', '10');
INSERT INTO "ABC"."ANIME" VALUES ('1009', 'Kaguya-Sama : Love is War', 'At the renowned Shuchiin Academy, Miyuki Shirogane and Kaguya Shinomiya are the student body''s top representatives. Ranked the top student in the nation and respected by peers and mentors alike, Miyuki serves as the student council president. Alongside him, the vice president Kaguya—eldest daughter of the wealthy Shinomiya family—excels in every field imaginable. They are the envy of the entire student body, regarded as the perfect couple.

However, despite both having already developed feelings for the other, neither are willing to admit them. The first to confess loses, will be looked down upon, and will be considered the lesser. With their honor and pride at stake, Miyuki and Kaguya are both equally determined to be the one to emerge victorious on the battlefield of love!', 'kaguya', TO_DATE('2015-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Spring', 'Pierro', '113', '0', '11');
INSERT INTO "ABC"."ANIME" VALUES ('1010', 'After The Rain', 'Akira Tachibana is a soft-spoken high school student who used to be a part of the track and field club but, due to an injury, she is no longer able to run as fast as she once could. Working part-time at a family restaurant as a recourse, she finds herself inexplicably falling in love with her manager, a divorced 45-year-old man with a young son.

Despite the age gap, Akira wholeheartedly embraces his mannerisms and kind nature, which is seen as spinelessness by the other employees, and little by little, the two begin to understand each other. Although unable to explain why exactly she is attracted to him, Akira believes that a concrete reason is not needed to truly love someone. On a rainy day, she decides to finally tell her manager about how she feels... But just how will he react?', 'rain', TO_DATE('2013-05-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Summer', 'Wit Studio', '113', '0', '12');
INSERT INTO "ABC"."ANIME" VALUES ('1011', 'Kuroko no Basket', 'For the last three years, Teikou Middle School has dominated the national basketball scene with its legendary lineup: the "Generation of Miracles." It consisted of five prodigies who excelled at the sport, but a "Phantom Sixth Man" lurked in the shadows and helped earn the team their revered status. Eventually, their monstrous growth jaded them from the sport they loved and made them go their separate ways in high school.

In search of new members, the Seirin High School basketball team recruits Taiga Kagami and Tetsuya Kuroko, two freshmen who seem to have significant differences in abilities. Having returned recently from America, Kagami has both a natural aptitude and relentless love for the sport. Meanwhile, Kuroko lacks presence and exhibits no outstanding athletic talent. However, it is later revealed that he is Teikou''s Phantom Sixth Man—the player once part of the Generation of Miracles.', 'knb', TO_DATE('2012-09-09 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Summer', 'Mappa', '115', '0', '14');

-- ----------------------------
-- Table structure for ANIME_GENRE
-- ----------------------------
DROP TABLE "ABC"."ANIME_GENRE";
CREATE TABLE "ABC"."ANIME_GENRE" (
  "ANIME_ID" NUMBER(6,0) VISIBLE NOT NULL,
  "GENRE_NAME" VARCHAR2(20 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ANIME_GENRE
-- ----------------------------
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1000', 'Action');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1000', 'Adventure');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1000', 'Fantasy');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1000', 'Mystery');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1001', 'Action');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1001', 'Adventure');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1002', 'Adventure');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1002', 'Romance');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1002', 'Sci-Fi');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1003', 'Comedy');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1003', 'Fantasy');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1003', 'Romance');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1003', 'Supernatural');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1004', 'Action');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1004', 'Adventure');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1004', 'Fantasy');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1004', 'Supernatural');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1005', 'Mystery');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1005', 'Supernatural');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1006', 'Action');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1006', 'Drama');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1006', 'Sci-Fi');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1006', 'Supernatural');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1007', 'Action');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1007', 'Adventure');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1007', 'Fantasy');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1007', 'Supernatural');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1008', 'Action');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1008', 'Comedy');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1009', 'Comedy');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1009', 'Drama');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1009', 'Romance');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1009', 'Slice-of-life');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1010', 'Drama');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1010', 'Slice-of-life');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1011', 'Sports');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1012', 'Action');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1012', 'Adventure');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1012', 'Comedy');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1012', 'Supernatural');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1013', 'Action');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1013', 'Drama');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1013', 'Mystery');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1013', 'Supernatural');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1014', 'Action');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1014', 'Comedy');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1014', 'Fantasy');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1015', 'Drama');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1015', 'Fantasy');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1015', 'Slice-of-life');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1016', 'Mystery');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1016', 'Slice-of-life');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1017', 'Comedy');
INSERT INTO "ABC"."ANIME_GENRE" VALUES ('1017', 'Slice-of-life');

-- ----------------------------
-- Table structure for ANIME_PICTURE
-- ----------------------------
DROP TABLE "ABC"."ANIME_PICTURE";
CREATE TABLE "ABC"."ANIME_PICTURE" (
  "ANIME_ID" NUMBER(6,0) VISIBLE NOT NULL,
  "PICTURE_ID" VARCHAR2(50 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ANIME_PICTURE
-- ----------------------------

-- ----------------------------
-- Table structure for CHARACTER
-- ----------------------------
DROP TABLE "ABC"."CHARACTER";
CREATE TABLE "ABC"."CHARACTER" (
  "ANIME_ID" NUMBER(6,0) VISIBLE NOT NULL,
  "FIRST_NAME" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "LAST_NAME" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "ROLE" VARCHAR2(20 BYTE) VISIBLE,
  "AGE" NUMBER(3,0) VISIBLE,
  "DESCRIPTION" VARCHAR2(200 BYTE) VISIBLE,
  "PICTURE_ID" VARCHAR2(50 BYTE) VISIBLE,
  "VOICE_ACTOR_ID" NUMBER(6,0) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of CHARACTER
-- ----------------------------
INSERT INTO "ABC"."CHARACTER" VALUES ('1012', 'Ichigo', 'Kurosaki', 'Protagonist', '17', '
For the most part, Ichigo appears like a normal teenage boy, the one exception to that is his spiky, orange hair', 'Ichigo', '141');
INSERT INTO "ABC"."CHARACTER" VALUES ('1012', 'Rukia', 'Kuchiki', 'Main', '17', NULL, 'Rukia', '135');
INSERT INTO "ABC"."CHARACTER" VALUES ('1017', 'Yui', 'Hirasawa', 'Main', '15', 'Yui is the lead guitarist and split vocalist of the Light Music Club who plays a Standard electric guitar that she nicknames "Gīta"', 'Yui', '137');
INSERT INTO "ABC"."CHARACTER" VALUES ('1017', 'Mio', 'Akiyama', 'Main', '15', '
Mio is a shy girl who is in the light music club.', 'Mio', '138');
INSERT INTO "ABC"."CHARACTER" VALUES ('1017', 'Tsumugi', 'Kotobuki', 'Main', '15', 'Tsumugi, often referred to as ''Mugi'' by her friends, is a wealthy girl with a gentle and sweet personality who plays a Korg', 'Tsumugi', '139');
INSERT INTO "ABC"."CHARACTER" VALUES ('1017', 'Ritsu', 'Tanaka', 'Main', '15', 'Ritsu (or Ricchan, as nicknamed by Yui) is the self-proclaimed president of the light music club ans plays the drums', 'Ritsu', '140');
INSERT INTO "ABC"."CHARACTER" VALUES ('1000', 'Eren', 'Yaeger', 'Protagonist', '22', 'ren is Shingeki no Kyojin''s protagonist.', 'Eren', '120');
INSERT INTO "ABC"."CHARACTER" VALUES ('1000', 'Mikasa', 'Ackerman', 'Main', '22', 'Mikasa is Eren''s childhood friend, along with Armin.', 'Mikasa', '121');
INSERT INTO "ABC"."CHARACTER" VALUES ('1000', 'Levi', 'Ackerman', 'Supporting', '25', 'Levi is known as humanity''s most powerful soldier.', 'Levi', '124');
INSERT INTO "ABC"."CHARACTER" VALUES ('1000', 'Armin', 'Arlert', 'Main', '22', 'Armin Arlert is Eren''s best friend. He is physically weak, but emotionally strong.', 'Armin', '123');
INSERT INTO "ABC"."CHARACTER" VALUES ('1001', 'Naruto', 'Uzumaki', 'Protagonist', '17', 'Born in Konohagakure, a ninja village hidden in the leaves, Naruto Uzumaki was destined for greatness.', 'Naruto', '125');
INSERT INTO "ABC"."CHARACTER" VALUES ('1001', 'Sasuke', 'Uchiha', 'Main', '17', 'When Sasuke was young, his clan was murdered by his older brother, Itachi.', 'Sasuke', '120');
INSERT INTO "ABC"."CHARACTER" VALUES ('1001', 'Sakura', 'Haruno', 'Main', '17', 'Sakura is the only female ninja of Team 7.', 'Sakura', '126');
INSERT INTO "ABC"."CHARACTER" VALUES ('1001', 'Kakashi', 'Hatake', 'Supporting', '35', 'Kakashi has an ongoing, albeit slightly one-sided, rivalry with Might Guy', 'Kakashi', '144');
INSERT INTO "ABC"."CHARACTER" VALUES ('1001', 'Shikamaru', 'Nara', 'Supporting', '18', 'Shikamaru is an extremely unenthusiastic person, and as such lives his life avoiding work.', 'Shikamaru', '121');
INSERT INTO "ABC"."CHARACTER" VALUES ('1001', 'Obito', 'Uchiha', 'Antagonist', '34', NULL, 'Obito', '143');
INSERT INTO "ABC"."CHARACTER" VALUES ('1001', 'Madara', 'Uchiha', 'Antagonist', '90', NULL, 'Madara', '142');
INSERT INTO "ABC"."CHARACTER" VALUES ('1002', 'Okabe', 'Rintarou', 'Protagonist', '18', 'Okabe is a theatrical and eccentric individual. He is a self-proclaimed mad scientis', 'Okabe', '141');
INSERT INTO "ABC"."CHARACTER" VALUES ('1002', 'Makise', 'Kurisu', 'Main', '18', 'The female protagonist. Kurisu is a research member in Victor Qondria University''s Brain Research Program', 'Makise', '126');
INSERT INTO "ABC"."CHARACTER" VALUES ('1003', 'Sadao', 'Maou', 'Protagonist', '300', 'Sadao is the Demon King from Ente Isla. Due to being confronted by the Hero Emilia and the humans, he was forced to retreat and ended up in the human world in present day Japan', 'Sadao', '127');
INSERT INTO "ABC"."CHARACTER" VALUES ('1003', 'Emi', 'Yusa', 'Main', '18', 'The hero who defeated Satan Lord. After forcing the Satan Lord out, she is not satisfied until she sees to it that he is destroyed', 'Emi', '124');
INSERT INTO "ABC"."CHARACTER" VALUES ('1004', 'Kirito', 'Kirigaya', 'Protagonist', '15', 'Kirito is the protagonist of Sword Art Online. He is a "solo" player, a player who hasn''t joined a guild and usually works alone.', 'Kirito', '120');
INSERT INTO "ABC"."CHARACTER" VALUES ('1004', 'Asuna ', 'Yuuki', 'Main', '16', '
Asuna is a friend of Kirito and is a sub-leader of the guild Knights of the Blood (KoB), a medium-sized guild of about thirty players, also called the strongest guild in Aincrad.', 'Asuna ', '122');
INSERT INTO "ABC"."CHARACTER" VALUES ('1004', 'Yui', 'Watanabe', 'Supporting', '10', 'A young and cheerful girl with long black hair who looks no older than 10 years old. Kirito and Asuna found her in a forest in the 22nd floor of Aincrad.', 'Yui', '130');
INSERT INTO "ABC"."CHARACTER" VALUES ('1005', 'Satoru', 'Fujinuma', 'Protagonist', '21', 'Satoru Fujinuma is a struggling manga author with a supernatural power that enables, or rather, forces him to prevent deaths and catastrophes that happen near him', 'Satoru', '142');
INSERT INTO "ABC"."CHARACTER" VALUES ('1005', 'Gaku', 'Yashiro', 'Antagonist', '52', 'Yashiro Gaku was Satoru''s homeroom teacher at Mikoto Elementary School in 1988.', 'Gaku', '143');
INSERT INTO "ABC"."CHARACTER" VALUES ('1005', 'Kayo', 'Hinazuki', 'Main', '10', 'Kayo Hinazuki is a ten-year-old girl and the first victim of the serial killer/kidnapper. She went missing on the 2nd of March 1988. Her body was found a few days later once the snow had thawed.', 'Kayo', '146');
INSERT INTO "ABC"."CHARACTER" VALUES ('1006', 'Lelouch', 'vi Brittannia', 'Protagonist', '18', NULL, 'Lelouch', '121');
INSERT INTO "ABC"."CHARACTER" VALUES ('1006', 'C.', 'C.', 'Main', '20', NULL, 'C.', '125');
INSERT INTO "ABC"."CHARACTER" VALUES ('1006', 'Suzaku', 'Kururugi', 'Main', '18', NULL, 'Suzaku', '120');
INSERT INTO "ABC"."CHARACTER" VALUES ('1006', 'Euphemia', 'li Brittannia', 'Main', '17', NULL, 'Euphemia', '126');
INSERT INTO "ABC"."CHARACTER" VALUES ('1007', 'Monkey', 'D. Luffy', 'Protagonist', '19', NULL, 'Monkey', '123');
INSERT INTO "ABC"."CHARACTER" VALUES ('1007', 'Roronoa', 'Zoro', 'Main', '25', NULL, 'Roronoa', '124');
INSERT INTO "ABC"."CHARACTER" VALUES ('1007', 'Vinesmoke', 'Sanji', 'Main', '24', NULL, 'Vinesmoke', '120');
INSERT INTO "ABC"."CHARACTER" VALUES ('1007', 'Nico', 'Robin', 'Main', '30', NULL, 'Nico', '126');
INSERT INTO "ABC"."CHARACTER" VALUES ('1008', 'Gintoki', 'Sakata', 'Protagonist', '27', NULL, 'Gintoki', '121');
INSERT INTO "ABC"."CHARACTER" VALUES ('1008', 'Kotaro', 'Katsura', 'Main', '26', NULL, 'Kotaro', '125');
INSERT INTO "ABC"."CHARACTER" VALUES ('1008', 'Tenshouin', 'Naraku', 'Antagonist', '31', NULL, 'Tenshouin', '122');
INSERT INTO "ABC"."CHARACTER" VALUES ('1009', 'Chika', 'Fujiwara', 'Main', '16', NULL, 'Chika', '125');
INSERT INTO "ABC"."CHARACTER" VALUES ('1009', 'Kaguya', 'Shinomiya', 'Protagonist', '16', NULL, 'Kaguya', '126');
INSERT INTO "ABC"."CHARACTER" VALUES ('1009', 'Miyuki', 'Shirogane', 'Main', '16', NULL, 'Miyuki', '122');
INSERT INTO "ABC"."CHARACTER" VALUES ('1009', 'Ai', 'Hayasaka', 'Supporting', '17', NULL, 'Ai', '129');
INSERT INTO "ABC"."CHARACTER" VALUES ('1009', 'Yu', 'Ishigami', 'Main', '15', NULL, 'Yu', '128');
INSERT INTO "ABC"."CHARACTER" VALUES ('1009', 'Kei', 'Shirogane', 'Supporting', '15', NULL, 'Kei', '129');
INSERT INTO "ABC"."CHARACTER" VALUES ('1010', 'Akira', 'Tachibana', 'Protagonist', '15', NULL, 'Akira', '126');
INSERT INTO "ABC"."CHARACTER" VALUES ('1010', 'Masami', 'Kondo', 'Main', '29', NULL, 'Masami', '122');
INSERT INTO "ABC"."CHARACTER" VALUES ('1010', 'Haruka', 'Kyan', 'Supporting', '15', NULL, 'Haruka', '130');
INSERT INTO "ABC"."CHARACTER" VALUES ('1011', 'Tetsuya', 'Kuroko', 'Protagonist', '17', NULL, 'Tetsuya', '150');
INSERT INTO "ABC"."CHARACTER" VALUES ('1011', 'Taiga', 'Kagami', 'Main', '17', NULL, 'Taiga', '149');
INSERT INTO "ABC"."CHARACTER" VALUES ('1011', 'Daiki', 'Aomine', 'Supporting', '18', NULL, 'Daiki', '148');
INSERT INTO "ABC"."CHARACTER" VALUES ('1011', 'Shintaro', 'Midorima', 'Supporting', '18', NULL, 'Shintaro', '147');
INSERT INTO "ABC"."CHARACTER" VALUES ('1012', 'Renji', 'Abarai', 'Supporting', '20', 'Renji is one of the most unusual Bleach character, having long crimson hair which is usually kept in high ponytail, and whole upper body tattooed in tribal work', 'Renji', '142');
INSERT INTO "ABC"."CHARACTER" VALUES ('1012', 'Cifer', 'Ulquiorra', 'Antagonist', '25', 'Ulquiorra is a male arrancar with a melancholic appearance. Ulquiora is the 4th ranked espada.', 'Cifer', '143');
INSERT INTO "ABC"."CHARACTER" VALUES ('1013', 'Ken', 'Kaneki', 'Protagonist', '16', 'Originally born as a human, his encounter with a female ghoul under the name of Kamishiro Rize forced him to turn into a ghoul', 'Ken', '144');
INSERT INTO "ABC"."CHARACTER" VALUES ('1013', 'Touka', 'Kirishima', 'Main', '16', 'Touka is a ghoul successfully posing as a human and working as a waitress at a cafe which serves as a gathering place for other ghouls, as well as a food resource.', 'Touka', '132');
INSERT INTO "ABC"."CHARACTER" VALUES ('1013', 'Nagachika', 'Hideyoshi', 'Supporting', '16', '
Hideyoshi is a normal human and the best friend of Ken Kaneki.', 'Nagachika', '146');
INSERT INTO "ABC"."CHARACTER" VALUES ('1014', 'Asta', ' ', 'Protagonist', '17', 'Asta is an orphan who was left under the care of a church in the village of Hage', 'Asta', '141');
INSERT INTO "ABC"."CHARACTER" VALUES ('1014', 'Noelle', 'Silva', 'Main', '16', '
Noelle Silva is a member of the Black Bull squad.', 'Noelle', '136');
INSERT INTO "ABC"."CHARACTER" VALUES ('1014', 'Luck', 'Voltia', 'Supporting', '18', 'A member of the Black Bull Squad of Magic Knights.', 'Luck', '145');
INSERT INTO "ABC"."CHARACTER" VALUES ('1015', 'Violet', 'Evergarden', 'Protagonist', '14', 'Violet is a newcomer Auto Memory Doll at the CH postal company.', 'Violet', '131');
INSERT INTO "ABC"."CHARACTER" VALUES ('1015', 'Gilbert', 'Bougainvilliea', 'Supporting', NULL, 'Gilbert is a major of the Leiden Shaf Rich Army.', 'Gilbert', '149');
INSERT INTO "ABC"."CHARACTER" VALUES ('1016', 'Houtarou', 'Oreki', 'Protagonist', '16', 'Oreki is a high-schooler with messy brown hair and green eyes.', 'Houtarou', '148');
INSERT INTO "ABC"."CHARACTER" VALUES ('1016', 'Eru', 'Chitanda', 'Main', '16', 'Chitanda is a calm and happy person, but can become very excited when new or interesting things happen, especially when it involves her club.', 'Eru', '136');

-- ----------------------------
-- Table structure for EPISODE
-- ----------------------------
DROP TABLE "ABC"."EPISODE";
CREATE TABLE "ABC"."EPISODE" (
  "ANIME_ID" NUMBER(6,0) VISIBLE NOT NULL,
  "SEASON" NUMBER(2,0) VISIBLE NOT NULL,
  "EPISODE_NUMBER" NUMBER(2,0) VISIBLE NOT NULL,
  "EPISODE_TITLE" VARCHAR2(30 BYTE) VISIBLE,
  "AIR_DATE" DATE VISIBLE,
  "RUNTIME" NUMBER(4,2) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of EPISODE
-- ----------------------------
INSERT INTO "ABC"."EPISODE" VALUES ('1010', '1', '2', 'Rain Drops on Green leaves', TO_DATE('2018-01-19 21:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.95');
INSERT INTO "ABC"."EPISODE" VALUES ('1010', '1', '3', 'Raining Tears', TO_DATE('2018-01-26 21:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.16');
INSERT INTO "ABC"."EPISODE" VALUES ('1010', '1', '4', 'Gentle Rain', TO_DATE('2018-02-02 21:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.77');
INSERT INTO "ABC"."EPISODE" VALUES ('1010', '1', '5', 'The Scent of Rain', TO_DATE('2018-02-09 21:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.01');
INSERT INTO "ABC"."EPISODE" VALUES ('1010', '1', '6', 'Fine Rain', TO_DATE('2018-02-12 21:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1010', '1', '7', 'Heavy Rain', TO_DATE('2018-02-25 21:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1010', '1', '8', 'Quiet rain', TO_DATE('2018-03-02 21:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.19');
INSERT INTO "ABC"."EPISODE" VALUES ('1010', '1', '9', 'Rain of Sorrow', TO_DATE('2018-03-12 21:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.13');
INSERT INTO "ABC"."EPISODE" VALUES ('1010', '1', '10', 'Sudden Shower', TO_DATE('2018-03-20 21:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.44');
INSERT INTO "ABC"."EPISODE" VALUES ('1010', '1', '11', 'Passing Shower', TO_DATE('2018-03-12 21:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1010', '1', '12', 'After the Rain', TO_DATE('2018-03-30 21:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1011', '1', '1', 'I Am Kuroko', TO_DATE('2012-04-20 07:03:22', 'SYYYY-MM-DD HH24:MI:SS'), '22.19');
INSERT INTO "ABC"."EPISODE" VALUES ('1011', '1', '2', 'I''m Serious', TO_DATE('2012-04-20 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.13');
INSERT INTO "ABC"."EPISODE" VALUES ('1011', '1', '3', 'It''s Better If I Can''t Win', TO_DATE('2012-04-20 17:00:39', 'SYYYY-MM-DD HH24:MI:SS'), '22.44');
INSERT INTO "ABC"."EPISODE" VALUES ('1011', '1', '4', 'Take Care of Counter Attack!', TO_DATE('2012-04-13 09:03:23', 'SYYYY-MM-DD HH24:MI:SS'), '22.51');
INSERT INTO "ABC"."EPISODE" VALUES ('1011', '1', '5', 'Your Basketball', TO_DATE('2012-04-06 03:34:45', 'SYYYY-MM-DD HH24:MI:SS'), '22.95');
INSERT INTO "ABC"."EPISODE" VALUES ('1011', '2', '1', 'I Never Thought We`d Meet Here', TO_DATE('2013-01-20 07:03:22', 'SYYYY-MM-DD HH24:MI:SS'), '22.16');
INSERT INTO "ABC"."EPISODE" VALUES ('1011', '2', '2', 'At The Winter Cup', TO_DATE('2013-01-20 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.77');
INSERT INTO "ABC"."EPISODE" VALUES ('1011', '2', '3', 'Start!!!', TO_DATE('2013-01-20 17:00:39', 'SYYYY-MM-DD HH24:MI:SS'), '22.01');
INSERT INTO "ABC"."EPISODE" VALUES ('1011', '2', '4', 'There Is Only One Answer', TO_DATE('2013-01-13 09:03:23', 'SYYYY-MM-DD HH24:MI:SS'), '22.01');
INSERT INTO "ABC"."EPISODE" VALUES ('1011', '2', '5', 'I''ve Been Waiting for This', TO_DATE('2013-01-06 03:34:45', 'SYYYY-MM-DD HH24:MI:SS'), '22.06');
INSERT INTO "ABC"."EPISODE" VALUES ('1001', '1', '1', 'Enter: Naruto Uzumaki!', TO_DATE('2002-10-03 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.01');
INSERT INTO "ABC"."EPISODE" VALUES ('1001', '1', '2', 'My name is Konohamaru!', TO_DATE('2002-10-03 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1001', '1', '3', 'Sasuke and Sakura', TO_DATE('2002-06-20 15:51:05', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1001', '1', '4', 'Survival test', TO_DATE('2002-07-07 15:13:14', 'SYYYY-MM-DD HH24:MI:SS'), '22.19');
INSERT INTO "ABC"."EPISODE" VALUES ('1001', '1', '5', 'Kakashi''s final descision', TO_DATE('2002-06-08 15:05:55', 'SYYYY-MM-DD HH24:MI:SS'), '22.13');
INSERT INTO "ABC"."EPISODE" VALUES ('1001', '2', '1', 'Homecoming', TO_DATE('2007-06-20 15:51:05', 'SYYYY-MM-DD HH24:MI:SS'), '22.44');
INSERT INTO "ABC"."EPISODE" VALUES ('1001', '2', '2', 'Akatsuki makes its move', TO_DATE('2007-07-07 15:13:14', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1001', '2', '3', 'The result of training', TO_DATE('2007-06-08 15:05:55', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1001', '2', '4', 'Jinchuriki of sand', TO_DATE('2007-10-03 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.19');
INSERT INTO "ABC"."EPISODE" VALUES ('1001', '2', '5', 'The Kazekage stands tall', TO_DATE('2007-10-03 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.13');
INSERT INTO "ABC"."EPISODE" VALUES ('1002', '1', '1', 'Turning point', TO_DATE('2011-10-03 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.44');
INSERT INTO "ABC"."EPISODE" VALUES ('1002', '1', '2', 'Time travel paranoia', TO_DATE('2011-10-03 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.51');
INSERT INTO "ABC"."EPISODE" VALUES ('1002', '1', '3', 'Parallel word paranoia', TO_DATE('2011-06-20 15:51:05', 'SYYYY-MM-DD HH24:MI:SS'), '22.95');
INSERT INTO "ABC"."EPISODE" VALUES ('1002', '1', '4', 'Interpreter rendezvous', TO_DATE('2011-07-07 15:13:14', 'SYYYY-MM-DD HH24:MI:SS'), '22.16');
INSERT INTO "ABC"."EPISODE" VALUES ('1002', '1', '5', 'Starmine rendezvous', TO_DATE('2011-06-08 15:05:55', 'SYYYY-MM-DD HH24:MI:SS'), '22.77');
INSERT INTO "ABC"."EPISODE" VALUES ('1002', '1', '6', 'Butterfly effect''s divergence', TO_DATE('2011-06-20 15:51:05', 'SYYYY-MM-DD HH24:MI:SS'), '22.01');
INSERT INTO "ABC"."EPISODE" VALUES ('1002', '1', '7', 'Divergence Singularity', TO_DATE('2011-07-07 15:13:14', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1002', '1', '8', 'Chaos theory homeostasis I', TO_DATE('2011-06-08 15:05:55', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1002', '1', '9', 'Chaos theory homeostasis II', TO_DATE('2011-10-03 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1002', '1', '10', 'Chaos theory homeostasis III', TO_DATE('2011-10-03 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1003', '1', '1', 'Devil''s arrival in Sasazuka', TO_DATE('2013-01-20 07:03:22', 'SYYYY-MM-DD HH24:MI:SS'), '22.19');
INSERT INTO "ABC"."EPISODE" VALUES ('1003', '1', '2', 'Hero stays at devil''s castle', TO_DATE('2013-01-20 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.13');
INSERT INTO "ABC"."EPISODE" VALUES ('1003', '1', '3', 'Devil goes on a date', TO_DATE('2013-01-20 17:00:39', 'SYYYY-MM-DD HH24:MI:SS'), '22.44');
INSERT INTO "ABC"."EPISODE" VALUES ('1003', '1', '4', 'Hero experiences human warmth', TO_DATE('2013-01-13 09:03:23', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1003', '1', '5', 'Devil and hero save Sasazuka', TO_DATE('2013-01-06 03:34:45', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1003', '2', '1', 'not yet aired', NULL, '22.19');
INSERT INTO "ABC"."EPISODE" VALUES ('1004', '1', '1', 'The world of swords', TO_DATE('2012-04-20 07:03:22', 'SYYYY-MM-DD HH24:MI:SS'), '22.13');
INSERT INTO "ABC"."EPISODE" VALUES ('1004', '1', '2', 'Beater', TO_DATE('2012-04-20 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.44');
INSERT INTO "ABC"."EPISODE" VALUES ('1004', '1', '3', 'The red nose reindeeer', TO_DATE('2012-04-20 17:00:39', 'SYYYY-MM-DD HH24:MI:SS'), '22.51');
INSERT INTO "ABC"."EPISODE" VALUES ('1004', '1', '4', 'The black swordsman', TO_DATE('2012-04-13 09:03:23', 'SYYYY-MM-DD HH24:MI:SS'), '22.95');
INSERT INTO "ABC"."EPISODE" VALUES ('1004', '1', '5', 'A crime within the wall', TO_DATE('2012-04-06 03:34:45', 'SYYYY-MM-DD HH24:MI:SS'), '22.16');
INSERT INTO "ABC"."EPISODE" VALUES ('1004', '2', '1', 'The world of guns', TO_DATE('2014-04-20 07:03:22', 'SYYYY-MM-DD HH24:MI:SS'), '22.77');
INSERT INTO "ABC"."EPISODE" VALUES ('1004', '2', '2', 'Cold-hearted sniper', TO_DATE('2014-04-20 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.01');
INSERT INTO "ABC"."EPISODE" VALUES ('1004', '2', '3', 'Memories of fresh blood', TO_DATE('2014-04-20 17:00:39', 'SYYYY-MM-DD HH24:MI:SS'), '22.01');
INSERT INTO "ABC"."EPISODE" VALUES ('1004', '2', '4', 'GGO', TO_DATE('2014-04-13 09:03:23', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1004', '2', '5', 'Guns and Swords', TO_DATE('2014-04-06 03:34:45', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1005', '1', '1', 'Flashing before my eyes', TO_DATE('2016-01-06 03:34:45', 'SYYYY-MM-DD HH24:MI:SS'), '22.19');
INSERT INTO "ABC"."EPISODE" VALUES ('1005', '1', '2', 'Palm of the hands', TO_DATE('2016-01-06 03:34:45', 'SYYYY-MM-DD HH24:MI:SS'), '22.13');
INSERT INTO "ABC"."EPISODE" VALUES ('1005', '1', '3', 'Birthmark', TO_DATE('2016-04-20 07:03:22', 'SYYYY-MM-DD HH24:MI:SS'), '22.44');
INSERT INTO "ABC"."EPISODE" VALUES ('1005', '1', '4', 'Accomplishment', TO_DATE('2016-04-20 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.51');
INSERT INTO "ABC"."EPISODE" VALUES ('1005', '1', '5', 'Getaway', TO_DATE('2016-04-20 17:00:39', 'SYYYY-MM-DD HH24:MI:SS'), '22.95');
INSERT INTO "ABC"."EPISODE" VALUES ('1005', '1', '6', 'Grim Reaper', TO_DATE('2016-04-13 09:03:23', 'SYYYY-MM-DD HH24:MI:SS'), '22.16');
INSERT INTO "ABC"."EPISODE" VALUES ('1005', '1', '7', 'Out of control', TO_DATE('2016-04-06 03:34:45', 'SYYYY-MM-DD HH24:MI:SS'), '22.77');
INSERT INTO "ABC"."EPISODE" VALUES ('1005', '1', '8', 'Spiral', TO_DATE('2016-04-20 07:03:22', 'SYYYY-MM-DD HH24:MI:SS'), '22.01');
INSERT INTO "ABC"."EPISODE" VALUES ('1005', '1', '9', 'Closure', TO_DATE('2016-04-20 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1005', '1', '10', 'Joy', TO_DATE('2016-04-20 17:00:39', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1005', '1', '11', 'Future', TO_DATE('2016-04-13 09:03:23', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1005', '1', '12', 'Treasure', TO_DATE('2016-04-06 03:34:45', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1012', '1', '1', 'The day I become a Shinigami', TO_DATE('2004-01-12 03:45:13', 'SYYYY-MM-DD HH24:MI:SS'), '22.19');
INSERT INTO "ABC"."EPISODE" VALUES ('1012', '1', '2', 'A Shinigami''s work', TO_DATE('2004-01-16 05:45:13', 'SYYYY-MM-DD HH24:MI:SS'), '22.13');
INSERT INTO "ABC"."EPISODE" VALUES ('1012', '1', '3', 'Sibling''s wish', TO_DATE('2004-01-26 01:45:13', 'SYYYY-MM-DD HH24:MI:SS'), '22.44');
INSERT INTO "ABC"."EPISODE" VALUES ('1012', '1', '4', 'Cursed Parakeet', TO_DATE('2004-02-02 05:45:13', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1012', '1', '5', 'Beat the invisible enemy!', TO_DATE('2004-02-09 02:45:13', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1012', '1', '6', 'Ichigo vs. Ichigo', TO_DATE('2004-02-16 09:45:13', 'SYYYY-MM-DD HH24:MI:SS'), '22.19');
INSERT INTO "ABC"."EPISODE" VALUES ('1012', '1', '7', 'Greetings from a stuffed lion', TO_DATE('2004-02-23 02:45:13', 'SYYYY-MM-DD HH24:MI:SS'), '22.13');
INSERT INTO "ABC"."EPISODE" VALUES ('1012', '1', '8', 'Memories of rain', TO_DATE('2004-03-01 03:45:13', 'SYYYY-MM-DD HH24:MI:SS'), '22.44');
INSERT INTO "ABC"."EPISODE" VALUES ('1012', '1', '9', 'Unbeatable enemy', TO_DATE('2004-03-08 23:45:13', 'SYYYY-MM-DD HH24:MI:SS'), '22.51');
INSERT INTO "ABC"."EPISODE" VALUES ('1012', '1', '10', 'Assult on trip', TO_DATE('2004-03-15 03:45:13', 'SYYYY-MM-DD HH24:MI:SS'), '22.95');
INSERT INTO "ABC"."EPISODE" VALUES ('1012', '1', '11', 'The legendary quincy', TO_DATE('2004-03-22 03:45:13', 'SYYYY-MM-DD HH24:MI:SS'), '22.16');
INSERT INTO "ABC"."EPISODE" VALUES ('1012', '1', '12', 'A gentle right arm', TO_DATE('2004-03-29 03:45:13', 'SYYYY-MM-DD HH24:MI:SS'), '22.77');
INSERT INTO "ABC"."EPISODE" VALUES ('1013', '1', '1', 'Tragedy', TO_DATE('2014-04-20 07:03:22', 'SYYYY-MM-DD HH24:MI:SS'), '22.01');
INSERT INTO "ABC"."EPISODE" VALUES ('1013', '1', '2', 'Incubation', TO_DATE('2014-04-20 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.01');
INSERT INTO "ABC"."EPISODE" VALUES ('1013', '1', '3', 'Dove', TO_DATE('2014-04-20 17:00:39', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1013', '1', '4', 'Supper', TO_DATE('2014-04-13 09:03:23', 'SYYYY-MM-DD HH24:MI:SS'), '22.51');
INSERT INTO "ABC"."EPISODE" VALUES ('1013', '1', '5', 'Scar', TO_DATE('2014-04-06 03:34:45', 'SYYYY-MM-DD HH24:MI:SS'), '22.95');
INSERT INTO "ABC"."EPISODE" VALUES ('1013', '2', '1', 'New surge', TO_DATE('2015-04-20 07:03:22', 'SYYYY-MM-DD HH24:MI:SS'), '22.16');
INSERT INTO "ABC"."EPISODE" VALUES ('1013', '2', '2', 'Dancing flowers', TO_DATE('2015-04-20 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.77');
INSERT INTO "ABC"."EPISODE" VALUES ('1013', '2', '3', 'Hangman', TO_DATE('2015-04-20 17:00:39', 'SYYYY-MM-DD HH24:MI:SS'), '22.01');
INSERT INTO "ABC"."EPISODE" VALUES ('1013', '2', '4', 'Deeper layers', TO_DATE('2015-04-13 09:03:23', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1013', '2', '5', 'Rift', TO_DATE('2015-04-06 03:34:45', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1013', '3', '1', 'Start:Those who hunt', TO_DATE('2018-02-09 22:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1013', '3', '2', 'Member:Fragments', TO_DATE('2018-02-12 19:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1013', '3', '3', 'Fresh:Eve', TO_DATE('2018-02-25 18:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.19');
INSERT INTO "ABC"."EPISODE" VALUES ('1013', '3', '4', 'Main:Auction', TO_DATE('2018-03-02 16:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.13');
INSERT INTO "ABC"."EPISODE" VALUES ('1013', '3', '5', 'Press:Night of scattering', TO_DATE('2018-03-12 06:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.44');
INSERT INTO "ABC"."EPISODE" VALUES ('1014', '1', '1', 'Asta and Yuno', TO_DATE('2017-03-12 11:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1014', '1', '2', 'The boy''s promise', TO_DATE('2017-03-19 01:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1014', '1', '3', 'To the Royal Capital', TO_DATE('2017-03-26 08:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.19');
INSERT INTO "ABC"."EPISODE" VALUES ('1014', '1', '4', 'Entance exam', TO_DATE('2017-04-02 12:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.13');
INSERT INTO "ABC"."EPISODE" VALUES ('1014', '1', '5', 'Path to the Wizard King', TO_DATE('2017-04-09 04:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.44');
INSERT INTO "ABC"."EPISODE" VALUES ('1014', '1', '6', 'The Black Bulls', TO_DATE('2017-04-24 15:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.51');
INSERT INTO "ABC"."EPISODE" VALUES ('1015', '1', '1', 'I Love You-Auto Memoir Doll', TO_DATE('2018-02-09 22:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.95');
INSERT INTO "ABC"."EPISODE" VALUES ('1015', '1', '2', '''Never Coming Back''', TO_DATE('2018-02-12 19:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.16');
INSERT INTO "ABC"."EPISODE" VALUES ('1015', '1', '3', 'An Exemplary Auto Memoir Doll', TO_DATE('2018-02-25 18:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.77');
INSERT INTO "ABC"."EPISODE" VALUES ('1015', '1', '4', 'Not a tool', TO_DATE('2018-03-02 16:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.01');
INSERT INTO "ABC"."EPISODE" VALUES ('1015', '1', '5', 'Letters-Bring people together', TO_DATE('2018-03-12 06:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.01');
INSERT INTO "ABC"."EPISODE" VALUES ('1016', '1', '1', 'Revival', TO_DATE('2012-04-20 07:03:22', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1016', '1', '2', 'Activities', TO_DATE('2012-04-20 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.51');
INSERT INTO "ABC"."EPISODE" VALUES ('1016', '1', '3', 'Descendants', TO_DATE('2012-04-20 17:00:39', 'SYYYY-MM-DD HH24:MI:SS'), '22.95');
INSERT INTO "ABC"."EPISODE" VALUES ('1016', '1', '4', 'Old days', TO_DATE('2012-04-13 09:03:23', 'SYYYY-MM-DD HH24:MI:SS'), '22.16');
INSERT INTO "ABC"."EPISODE" VALUES ('1016', '1', '5', 'Truth', TO_DATE('2012-04-06 03:34:45', 'SYYYY-MM-DD HH24:MI:SS'), '22.77');
INSERT INTO "ABC"."EPISODE" VALUES ('1017', '1', '1', 'Disband the Club!', TO_DATE('2009-01-20 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.01');
INSERT INTO "ABC"."EPISODE" VALUES ('1017', '1', '2', 'Instruments!', TO_DATE('2009-01-20 17:00:39', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1017', '1', '3', 'Cram Session!', TO_DATE('2009-01-13 09:03:23', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1017', '1', '4', 'Training Camp!', TO_DATE('2009-01-06 03:34:45', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1017', '1', '5', 'Advisor!', TO_DATE('2009-01-20 07:03:22', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1017', '2', '1', 'Seniors!', TO_DATE('2010-10-20 21:26:26', 'SYYYY-MM-DD HH24:MI:SS'), '22.19');
INSERT INTO "ABC"."EPISODE" VALUES ('1017', '2', '2', 'Clean-up!', TO_DATE('2010-10-20 07:03:22', 'SYYYY-MM-DD HH24:MI:SS'), '22.13');
INSERT INTO "ABC"."EPISODE" VALUES ('1017', '2', '3', 'Drummer!', TO_DATE('2010-10-27 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.44');
INSERT INTO "ABC"."EPISODE" VALUES ('1017', '2', '4', 'Field Trip!', TO_DATE('2010-11-02 17:00:39', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1017', '2', '5', 'Staying Behind!', TO_DATE('2010-11-13 09:03:23', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1006', '1', '1', 'The Day a New Demon was Born', TO_DATE('2006-01-20 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.19');
INSERT INTO "ABC"."EPISODE" VALUES ('1006', '1', '2', 'The White Knight Awakens', TO_DATE('2006-01-20 17:00:39', 'SYYYY-MM-DD HH24:MI:SS'), '22.13');
INSERT INTO "ABC"."EPISODE" VALUES ('1006', '1', '3', 'The False Classmate', TO_DATE('2006-01-13 09:03:23', 'SYYYY-MM-DD HH24:MI:SS'), '22.44');
INSERT INTO "ABC"."EPISODE" VALUES ('1006', '1', '4', 'His Name is Zero', TO_DATE('2006-01-06 03:34:45', 'SYYYY-MM-DD HH24:MI:SS'), '22.51');
INSERT INTO "ABC"."EPISODE" VALUES ('1006', '1', '5', 'The Princess and the Witch', TO_DATE('2006-01-20 07:03:22', 'SYYYY-MM-DD HH24:MI:SS'), '22.95');
INSERT INTO "ABC"."EPISODE" VALUES ('1006', '2', '1', 'The Day a Demon Awakens', TO_DATE('2008-10-20 21:26:26', 'SYYYY-MM-DD HH24:MI:SS'), '22.16');
INSERT INTO "ABC"."EPISODE" VALUES ('1006', '2', '2', 'Plan for Independent Japan', TO_DATE('2008-10-20 07:03:22', 'SYYYY-MM-DD HH24:MI:SS'), '22.77');
INSERT INTO "ABC"."EPISODE" VALUES ('1006', '2', '3', 'Imprisoned in Campus', TO_DATE('2008-10-27 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.01');
INSERT INTO "ABC"."EPISODE" VALUES ('1006', '2', '4', 'Counterattack at the Gallows', TO_DATE('2008-11-02 17:00:39', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1006', '2', '5', 'Knights of the Round', TO_DATE('2008-11-13 09:03:23', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1007', '1', '1', 'I''m Luffy! ', TO_DATE('1999-10-20 21:26:26', 'SYYYY-MM-DD HH24:MI:SS'), '22.19');
INSERT INTO "ABC"."EPISODE" VALUES ('1007', '1', '2', 'Pirate Hunter Roronoa Zoro!', TO_DATE('1999-10-20 07:03:22', 'SYYYY-MM-DD HH24:MI:SS'), '22.13');
INSERT INTO "ABC"."EPISODE" VALUES ('1007', '1', '3', 'Morgan versus Luffy! ', TO_DATE('1999-10-27 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.44');
INSERT INTO "ABC"."EPISODE" VALUES ('1007', '1', '4', 'Enter Red-Haired Shanks!', TO_DATE('1999-11-02 17:00:39', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1007', '1', '5', 'Captain Buggy,the Clown Pirate', TO_DATE('1999-11-13 09:03:23', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1007', '1', '6', 'Beast Tamer Mohji vs. Luffy!', TO_DATE('1999-11-16 03:34:45', 'SYYYY-MM-DD HH24:MI:SS'), '22.19');
INSERT INTO "ABC"."EPISODE" VALUES ('1007', '1', '7', 'Zoro vs. Cabaji', TO_DATE('1999-11-20 07:03:22', 'SYYYY-MM-DD HH24:MI:SS'), '22.13');
INSERT INTO "ABC"."EPISODE" VALUES ('1007', '1', '8', 'Devil Fruit Power Showdown!', TO_DATE('1999-11-27 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.44');
INSERT INTO "ABC"."EPISODE" VALUES ('1007', '1', '9', 'Captain Usopp!', TO_DATE('1999-12-05 17:00:39', 'SYYYY-MM-DD HH24:MI:SS'), '22.51');
INSERT INTO "ABC"."EPISODE" VALUES ('1007', '1', '10', 'Jango the Hypnotist!', TO_DATE('1999-12-13 09:03:23', 'SYYYY-MM-DD HH24:MI:SS'), '22.95');
INSERT INTO "ABC"."EPISODE" VALUES ('1008', '1', '1', 'Claim To Have Gintama (part 1)', TO_DATE('2006-01-20 07:03:22', 'SYYYY-MM-DD HH24:MI:SS'), '22.16');
INSERT INTO "ABC"."EPISODE" VALUES ('1008', '1', '2', 'Claim To Have Gintama (part 2)', TO_DATE('2006-01-20 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.77');
INSERT INTO "ABC"."EPISODE" VALUES ('1008', '1', '3', 'Wavy Hair Can Be That Bad', TO_DATE('2006-01-20 17:00:39', 'SYYYY-MM-DD HH24:MI:SS'), '22.01');
INSERT INTO "ABC"."EPISODE" VALUES ('1008', '1', '4', 'Watch Out!', TO_DATE('2006-01-13 09:03:23', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1008', '1', '5', 'Friends-Nicknames-Old Fart', TO_DATE('2006-01-06 03:34:45', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1008', '1', '6', 'Promise Even If It Kills You', TO_DATE('2006-01-20 07:03:22', 'SYYYY-MM-DD HH24:MI:SS'), '22.19');
INSERT INTO "ABC"."EPISODE" VALUES ('1008', '1', '7', 'Clean Up After Their Pets', TO_DATE('2006-01-20 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.13');
INSERT INTO "ABC"."EPISODE" VALUES ('1008', '1', '8', 'Persistence And Stubbornness', TO_DATE('2006-01-20 17:00:39', 'SYYYY-MM-DD HH24:MI:SS'), '22.44');
INSERT INTO "ABC"."EPISODE" VALUES ('1008', '1', '9', 'Fighting-Done With Fists', TO_DATE('2006-01-13 09:03:23', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1008', '1', '10', 'Eat sour when tired', TO_DATE('2006-01-06 03:34:45', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1009', '1', '1', 'Kaguya wants it', TO_DATE('2019-01-12 21:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1009', '1', '2', 'Kaguya Wants to Trade', TO_DATE('2019-01-19 21:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1009', '1', '3', 'Kaguya Wants to Walk', TO_DATE('2019-01-26 21:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.19');
INSERT INTO "ABC"."EPISODE" VALUES ('1009', '1', '4', 'Kaguya Wants Affection ', TO_DATE('2019-02-02 21:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.13');
INSERT INTO "ABC"."EPISODE" VALUES ('1009', '1', '5', 'Kaguya Wants to Handle It', TO_DATE('2019-02-09 21:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.44');
INSERT INTO "ABC"."EPISODE" VALUES ('1009', '2', '1', 'Kaguya Wants to Celebrate', TO_DATE('2020-01-12 21:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1009', '2', '2', 'Kaguya Wants to Know', TO_DATE('2020-01-19 21:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1009', '2', '3', 'Kaguya Doesn''t want to Say it', TO_DATE('2020-01-26 21:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.19');
INSERT INTO "ABC"."EPISODE" VALUES ('1000', '1', '1', 'To you, in 2000 years', TO_DATE('2013-01-20 07:03:22', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1000', '1', '2', 'That day', TO_DATE('2013-01-20 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1000', '1', '3', 'A dim Light', TO_DATE('2013-01-20 17:00:39', 'SYYYY-MM-DD HH24:MI:SS'), '22.19');
INSERT INTO "ABC"."EPISODE" VALUES ('1000', '1', '4', 'The night of the ceremony', TO_DATE('2013-01-13 09:03:23', 'SYYYY-MM-DD HH24:MI:SS'), '22.13');
INSERT INTO "ABC"."EPISODE" VALUES ('1000', '1', '5', 'First Battle', TO_DATE('2013-01-06 03:34:45', 'SYYYY-MM-DD HH24:MI:SS'), '22.44');
INSERT INTO "ABC"."EPISODE" VALUES ('1000', '1', '6', 'The World the Girl Saw', TO_DATE('2013-01-20 07:03:22', 'SYYYY-MM-DD HH24:MI:SS'), '22.15');
INSERT INTO "ABC"."EPISODE" VALUES ('1000', '1', '7', 'Small Blade', TO_DATE('2013-01-20 20:34:41', 'SYYYY-MM-DD HH24:MI:SS'), '22.6');
INSERT INTO "ABC"."EPISODE" VALUES ('1000', '1', '8', 'I Can Hear His Heartbeat', TO_DATE('2013-01-20 17:00:39', 'SYYYY-MM-DD HH24:MI:SS'), '22.19');
INSERT INTO "ABC"."EPISODE" VALUES ('1000', '1', '9', 'Whereabouts of His Left Arm', TO_DATE('2013-01-13 09:03:23', 'SYYYY-MM-DD HH24:MI:SS'), '22.13');
INSERT INTO "ABC"."EPISODE" VALUES ('1000', '1', '10', 'Response', TO_DATE('2013-01-06 03:34:45', 'SYYYY-MM-DD HH24:MI:SS'), '22.44');
INSERT INTO "ABC"."EPISODE" VALUES ('1000', '2', '1', 'Idol', TO_DATE('2013-07-21 09:35:33', 'SYYYY-MM-DD HH24:MI:SS'), '22.51');
INSERT INTO "ABC"."EPISODE" VALUES ('1000', '2', '2', 'Wound', TO_DATE('2013-07-06 10:31:12', 'SYYYY-MM-DD HH24:MI:SS'), '22.95');
INSERT INTO "ABC"."EPISODE" VALUES ('1000', '2', '3', 'Primal Desire', TO_DATE('2013-06-20 15:51:05', 'SYYYY-MM-DD HH24:MI:SS'), '22.16');
INSERT INTO "ABC"."EPISODE" VALUES ('1000', '2', '4', 'Since That Day', TO_DATE('2013-07-07 15:13:14', 'SYYYY-MM-DD HH24:MI:SS'), '22.77');
INSERT INTO "ABC"."EPISODE" VALUES ('1000', '2', '5', 'Can''t Look into His Eyes Yet', TO_DATE('2013-06-08 15:05:55', 'SYYYY-MM-DD HH24:MI:SS'), '22.01');
INSERT INTO "ABC"."EPISODE" VALUES ('1009', '2', '4', 'Kaguya Wants to be Confesed to', TO_DATE('2020-02-02 21:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.13');
INSERT INTO "ABC"."EPISODE" VALUES ('1009', '2', '5', 'Kaguya Wants to kick them out', TO_DATE('2020-02-09 21:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.44');
INSERT INTO "ABC"."EPISODE" VALUES ('1010', '1', '1', 'The Sound of Rain', TO_DATE('2018-01-12 21:16:04', 'SYYYY-MM-DD HH24:MI:SS'), '22.51');

-- ----------------------------
-- Table structure for GENRE
-- ----------------------------
DROP TABLE "ABC"."GENRE";
CREATE TABLE "ABC"."GENRE" (
  "GENRE_NAME" VARCHAR2(20 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of GENRE
-- ----------------------------
INSERT INTO "ABC"."GENRE" VALUES ('Action');
INSERT INTO "ABC"."GENRE" VALUES ('Adventure');
INSERT INTO "ABC"."GENRE" VALUES ('Comedy');
INSERT INTO "ABC"."GENRE" VALUES ('Drama');
INSERT INTO "ABC"."GENRE" VALUES ('Fantasy');
INSERT INTO "ABC"."GENRE" VALUES ('Mystery');
INSERT INTO "ABC"."GENRE" VALUES ('Romance');
INSERT INTO "ABC"."GENRE" VALUES ('Sci-Fi');
INSERT INTO "ABC"."GENRE" VALUES ('Slice-of-life');
INSERT INTO "ABC"."GENRE" VALUES ('Sports');
INSERT INTO "ABC"."GENRE" VALUES ('Supernatural');

-- ----------------------------
-- Table structure for PERSONNEL
-- ----------------------------
DROP TABLE "ABC"."PERSONNEL";
CREATE TABLE "ABC"."PERSONNEL" (
  "PERSONNEL_ID" NUMBER(6,0) VISIBLE NOT NULL,
  "FIRST_NAME" VARCHAR2(20 BYTE) VISIBLE,
  "LAST_NAME" VARCHAR2(20 BYTE) VISIBLE,
  "BIRTHDAY" DATE VISIBLE,
  "ADDRESS" VARCHAR2(120 BYTE) VISIBLE,
  "WEBSITE" VARCHAR2(30 BYTE) VISIBLE,
  "PICTURE_ID" VARCHAR2(50 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PERSONNEL
-- ----------------------------
INSERT INTO "ABC"."PERSONNEL" VALUES ('131', 'Airi', 'Sasaki', TO_DATE('2009-03-18 15:16:40', 'SYYYY-MM-DD HH24:MI:SS'), '5-2-13 Higashi Gotanda, Shinagawa-ku ', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('132', 'Aika', 'Yamashita', TO_DATE('1994-09-09 00:53:17', 'SYYYY-MM-DD HH24:MI:SS'), '1-7-9 Omido, Higashiosaka', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('133', 'Momoka', 'Tanaka', TO_DATE('2001-09-04 18:51:22', 'SYYYY-MM-DD HH24:MI:SS'), '5-19-8 Shinei 4 Jo, Kiyota Ward', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('134', 'Chika', 'Sugawara', TO_DATE('2003-01-13 03:48:02', 'SYYYY-MM-DD HH24:MI:SS'), '6-1-14, Miyanomori 4 Jō, Chuo Ward', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('135', 'Itsuki', 'Miura', TO_DATE('2003-12-21 01:10:16', 'SYYYY-MM-DD HH24:MI:SS'), '1-1-17 Deshiro, Nishinari Ward', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('136', 'Eiko', 'Harada', TO_DATE('1999-01-28 02:06:42', 'SYYYY-MM-DD HH24:MI:SS'), '4-9-6 Kamihigashi, Hirano Ward', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('137', 'Akina', 'Noguchi', TO_DATE('1992-12-16 08:58:24', 'SYYYY-MM-DD HH24:MI:SS'), '3-9-3 Gakuenminami', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('138', 'Fumiko', 'Takada', TO_DATE('2006-05-19 16:30:04', 'SYYYY-MM-DD HH24:MI:SS'), '2-1-16 Kaminopporo 1 Jo, Atsubetsu Ward', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('139', 'Rena', 'Yoshida', TO_DATE('2003-12-21 15:27:06', 'SYYYY-MM-DD HH24:MI:SS'), '1-7-19 Saidaiji Akodacho', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('140', 'Kaguya', 'Sato', TO_DATE('2007-08-26 14:10:37', 'SYYYY-MM-DD HH24:MI:SS'), '2-5-14 Chitose, Atsuta Ward', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('141', 'Kaito', 'Sano', TO_DATE('2008-11-22 13:25:11', 'SYYYY-MM-DD HH24:MI:SS'), '13-3-13 Toyohira 3 Jo, Toyohira Ward', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('142', 'Sasuke', 'Ueno', TO_DATE('1999-05-27 10:56:38', 'SYYYY-MM-DD HH24:MI:SS'), '5-4-7 Kikusui 3 Jo, Shiroishi Ward,', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('143', 'Yamato', 'Masuda', TO_DATE('1992-01-24 10:46:37', 'SYYYY-MM-DD HH24:MI:SS'), '1-5-17, Higashi-Shimbashi, Minato-ku', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('144', 'Ayato', 'Kudo', TO_DATE('2009-04-12 07:59:04', 'SYYYY-MM-DD HH24:MI:SS'), '1-5-5, Higashi-Shimbashi, Minato-ku', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('145', 'Minato', 'Yamaguchi', TO_DATE('1996-04-04 19:19:44', 'SYYYY-MM-DD HH24:MI:SS'), '4-9-9 Kamihigashi, Hirano Ward', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('146', 'Takuya', 'Kaneko', TO_DATE('1996-08-18 02:39:19', 'SYYYY-MM-DD HH24:MI:SS'), '4 3-803 Kusunokiajima, Kita Ward', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('147', 'Hibiki', 'Ueno', TO_DATE('1999-12-19 02:33:43', 'SYYYY-MM-DD HH24:MI:SS'), '13-3-16 Toyohira 3 Jo, Toyohira Ward', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('148', 'Hisao', 'Ando', TO_DATE('1996-05-15 16:47:50', 'SYYYY-MM-DD HH24:MI:SS'), '5-2-6 Kikusui 3 Jo, Shiroishi Ward', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('149', 'Junichiro', 'Miyazaki', TO_DATE('2000-11-19 17:21:10', 'SYYYY-MM-DD HH24:MI:SS'), '2-1-11 Tenjinnomori, Nishinari Ward', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('150', 'Hyousuke', 'Yamazaki', TO_DATE('1997-12-02 20:03:13', 'SYYYY-MM-DD HH24:MI:SS'), '2 1-1 Honjocho, Yamatokoriyama', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('100', 'Arimura ', 'Aoshi', TO_DATE('2012-12-01 08:09:05', 'SYYYY-MM-DD HH24:MI:SS'), '613 Nostrand Ave', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('101', 'Billy ', 'Murphy', TO_DATE('2005-08-11 07:08:04', 'SYYYY-MM-DD HH24:MI:SS'), '1-7-13 Saidaiji Akodacho', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('102', 'Gerald ', 'Shaw', TO_DATE('2010-08-10 22:13:36', 'SYYYY-MM-DD HH24:MI:SS'), '2-5-19 Chitose, Atsuta Ward', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('103', 'Ku Ching ', 'Wan', TO_DATE('2015-06-19 07:27:52', 'SYYYY-MM-DD HH24:MI:SS'), '401 Figueroa Street', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('104', 'Yamamoto ', 'Kenta', TO_DATE('2020-06-29 23:48:38', 'SYYYY-MM-DD HH24:MI:SS'), '670 Wicklow Road', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('105', 'Fan Sum ', 'Wing', TO_DATE('2015-06-14 03:00:37', 'SYYYY-MM-DD HH24:MI:SS'), '672 S Broadway', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('106', 'Reki', 'Kawahara', TO_DATE('1980-07-10 22:30:46', 'SYYYY-MM-DD HH24:MI:SS'), '411 Figueroa Street', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('107', 'Mary', 'Hernandez', TO_DATE('1985-02-04 21:37:27', 'SYYYY-MM-DD HH24:MI:SS'), '593 Wall Street', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('108', 'Annie', 'Cole', TO_DATE('1985-12-17 02:20:22', 'SYYYY-MM-DD HH24:MI:SS'), '608 Ridgewood Road', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('109', 'Riku', 'Watanabe', TO_DATE('1983-09-26 19:16:30', 'SYYYY-MM-DD HH24:MI:SS'), '6 1-1 Honjocho, Yamatokoriyama', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('110', 'Tracy', 'Spencer', TO_DATE('2000-04-02 20:37:22', 'SYYYY-MM-DD HH24:MI:SS'), '292 Little Clarendon St', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('111', 'Rebecca', 'Gutierrez', TO_DATE('1992-11-26 19:56:57', 'SYYYY-MM-DD HH24:MI:SS'), '3 Wicklow Road', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('112', 'Beverly', 'Patel', TO_DATE('1988-03-30 21:43:51', 'SYYYY-MM-DD HH24:MI:SS'), '131 Central Avenue', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('113', 'Hana', 'Ueda', TO_DATE('2000-08-27 23:34:24', 'SYYYY-MM-DD HH24:MI:SS'), '4-9-3 Kamihigashi, Hirano Ward', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('114', 'Clara', 'Wilson', TO_DATE('1987-05-15 02:13:35', 'SYYYY-MM-DD HH24:MI:SS'), '870 East Cooke Road', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('115', 'Joshua', 'Medina', TO_DATE('1996-05-10 09:37:46', 'SYYYY-MM-DD HH24:MI:SS'), '872 Spring Gardens', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('116', 'Tetsuya', ' Kinoshita', TO_DATE('1997-02-15 03:36:21', 'SYYYY-MM-DD HH24:MI:SS'), '651 Flatbush Ave', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('117', 'Kensuke', 'Tateishi', TO_DATE('1983-03-11 17:32:16', 'SYYYY-MM-DD HH24:MI:SS'), '397 Broadway', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('118', 'Toshihiro', ' Maeda', TO_DATE('1984-07-06 00:53:03', 'SYYYY-MM-DD HH24:MI:SS'), '189 Bank Street', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('119', 'Daisuke', 'Yamamoto', TO_DATE('2001-10-25 08:33:17', 'SYYYY-MM-DD HH24:MI:SS'), '677 Columbia St', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('120', 'Eita', 'Chiba', TO_DATE('1998-02-07 07:59:19', 'SYYYY-MM-DD HH24:MI:SS'), '5-2-10 Higashi Gotanda, Shinagawa-ku ', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('121', 'Shin', 'Furukawa', TO_DATE('2015-06-14 03:00:37', 'SYYYY-MM-DD HH24:MI:SS'), '672 S Broadway', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('122', 'Tomohito', 'Nagase', TO_DATE('1980-07-10 22:30:46', 'SYYYY-MM-DD HH24:MI:SS'), '411 Figueroa Street', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('123', 'George', 'Wada', TO_DATE('1985-02-04 21:37:27', 'SYYYY-MM-DD HH24:MI:SS'), '593 Wall Street', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('124', 'Tetsuya', 'Endō', TO_DATE('1985-12-17 02:20:22', 'SYYYY-MM-DD HH24:MI:SS'), '608 Ridgewood Road', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('125', 'Yasuyuki', 'Nishiya', TO_DATE('1983-09-26 19:16:30', 'SYYYY-MM-DD HH24:MI:SS'), '6 1-1 Honjocho, Yamatokoriyama', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('126', 'Sakuno', 'Kiyota', TO_DATE('2000-04-02 20:37:22', 'SYYYY-MM-DD HH24:MI:SS'), '292 Little Clarendon St', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('127', 'Hitoshi', 'Ito', TO_DATE('1992-11-26 19:56:57', 'SYYYY-MM-DD HH24:MI:SS'), '3 Wicklow Road', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('128', 'Makoto', 'Kimura', TO_DATE('2015-06-19 07:27:52', 'SYYYY-MM-DD HH24:MI:SS'), '401 Figueroa Street', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('129', 'Mariko', 'Nishimiya', TO_DATE('1980-07-10 22:30:46', 'SYYYY-MM-DD HH24:MI:SS'), '397 Broadway', NULL, NULL);
INSERT INTO "ABC"."PERSONNEL" VALUES ('130', 'Kei', 'Kashiwagi', TO_DATE('1996-05-10 09:37:46', 'SYYYY-MM-DD HH24:MI:SS'), '6 1-1 Honjocho, Yamatokoriyama', NULL, NULL);

-- ----------------------------
-- Table structure for RATED
-- ----------------------------
DROP TABLE "ABC"."RATED";
CREATE TABLE "ABC"."RATED" (
  "USERNAME" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "ANIME_ID" NUMBER(6,0) VISIBLE NOT NULL,
  "SEASON" NUMBER(2,0) VISIBLE NOT NULL,
  "EPISODE_NUMBER" NUMBER(2,0) VISIBLE NOT NULL,
  "STARS" NUMBER(1,0) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of RATED
-- ----------------------------

-- ----------------------------
-- Table structure for REVIEW
-- ----------------------------
DROP TABLE "ABC"."REVIEW";
CREATE TABLE "ABC"."REVIEW" (
  "REVIEW_ID" NUMBER VISIBLE DEFAULT "ABC"."ISEQ$$_80352".nextval NOT NULL,
  "CONTENT" VARCHAR2(500 BYTE) VISIBLE NOT NULL,
  "REVIEW_DATE" DATE VISIBLE DEFAULT SYSDATE,
  "VOTES" NUMBER(4,0) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of REVIEW
-- ----------------------------
INSERT INTO "ABC"."REVIEW" VALUES ('68', 'Best anime ever', TO_DATE('2022-02-17 21:41:56', 'SYYYY-MM-DD HH24:MI:SS'), '2');
INSERT INTO "ABC"."REVIEW" VALUES ('66', 'razin''s review', TO_DATE('2022-02-17 18:12:18', 'SYYYY-MM-DD HH24:MI:SS'), '0');
INSERT INTO "ABC"."REVIEW" VALUES ('67', 'forhad''s review', TO_DATE('2022-02-17 18:12:39', 'SYYYY-MM-DD HH24:MI:SS'), '0');
INSERT INTO "ABC"."REVIEW" VALUES ('70', 'VOOTE MY REVIEW TOO! DONT REMOVE IT', TO_DATE('2022-02-17 21:56:04', 'SYYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "ABC"."REVIEW" VALUES ('73', 'Nice one', TO_DATE('2022-02-18 00:15:55', 'SYYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "ABC"."REVIEW" VALUES ('2', 'too beautiful', TO_DATE('2022-02-01 20:52:24', 'SYYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "ABC"."REVIEW" VALUES ('41', 'Do it again ! :D', TO_DATE('2022-02-17 05:13:45', 'SYYYY-MM-DD HH24:MI:SS'), '0');
INSERT INTO "ABC"."REVIEW" VALUES ('75', 'Second review', TO_DATE('2022-02-18 13:14:31', 'SYYYY-MM-DD HH24:MI:SS'), '0');

-- ----------------------------
-- Table structure for REVIEWED
-- ----------------------------
DROP TABLE "ABC"."REVIEWED";
CREATE TABLE "ABC"."REVIEWED" (
  "USERNAME" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "ANIME_ID" NUMBER(6,0) VISIBLE NOT NULL,
  "REVIEW_ID" NUMBER(6,0) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of REVIEWED
-- ----------------------------
INSERT INTO "ABC"."REVIEWED" VALUES ('forhad', '1005', '67');
INSERT INTO "ABC"."REVIEWED" VALUES ('john', '1000', '68');
INSERT INTO "ABC"."REVIEWED" VALUES ('john', '1001', '75');
INSERT INTO "ABC"."REVIEWED" VALUES ('razin', '1001', '2');
INSERT INTO "ABC"."REVIEWED" VALUES ('razin', '1002', '73');
INSERT INTO "ABC"."REVIEWED" VALUES ('razin', '1003', '70');
INSERT INTO "ABC"."REVIEWED" VALUES ('razin', '1005', '66');
INSERT INTO "ABC"."REVIEWED" VALUES ('razin', '1009', '41');

-- ----------------------------
-- Table structure for STUDIO
-- ----------------------------
DROP TABLE "ABC"."STUDIO";
CREATE TABLE "ABC"."STUDIO" (
  "STUDIO_NAME" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "FOUNDING_DATE" DATE VISIBLE,
  "WEBSITE" VARCHAR2(30 BYTE) VISIBLE,
  "HEADQUARTER" VARCHAR2(20 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of STUDIO
-- ----------------------------
INSERT INTO "ABC"."STUDIO" VALUES ('A-1 Pictures', TO_DATE('2003-05-03 21:02:44', 'SYYYY-MM-DD HH24:MI:SS'), 'a1p.jp', 'Tokyo');
INSERT INTO "ABC"."STUDIO" VALUES ('White Fox', TO_DATE('2015-01-13 21:02:44', 'SYYYY-MM-DD HH24:MI:SS'), 'w-fox.co.jp', 'Osaka');
INSERT INTO "ABC"."STUDIO" VALUES ('Toei Animation', TO_DATE('1998-06-10 21:02:44', 'SYYYY-MM-DD HH24:MI:SS'), 'www.toei-anim.co.jp', 'Tokyo');
INSERT INTO "ABC"."STUDIO" VALUES ('Sunrise', TO_DATE('1972-12-12 21:02:44', 'SYYYY-MM-DD HH24:MI:SS'), 'sunrise-inc.co.jp', 'Tokyo');
INSERT INTO "ABC"."STUDIO" VALUES ('Wit Studio', TO_DATE('2009-01-15 21:02:44', 'SYYYY-MM-DD HH24:MI:SS'), 'witstudio.co.jp', 'Tokyo');
INSERT INTO "ABC"."STUDIO" VALUES ('Kyoto Animation', TO_DATE('1981-12-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'kyotoanimation.co.jp', 'Kyoto');
INSERT INTO "ABC"."STUDIO" VALUES ('Pierro', TO_DATE('1979-05-16 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'en.pierro.jp', 'Tokyo');
INSERT INTO "ABC"."STUDIO" VALUES ('Mappa', TO_DATE('2007-06-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'mappa.co.jp', 'Tokyo');

-- ----------------------------
-- Table structure for TEST
-- ----------------------------
DROP TABLE "ABC"."TEST";
CREATE TABLE "ABC"."TEST" (
  "ID" NUMBER(3,0) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of TEST
-- ----------------------------
INSERT INTO "ABC"."TEST" VALUES ('12');
INSERT INTO "ABC"."TEST" VALUES ('22');
INSERT INTO "ABC"."TEST" VALUES ('25');
INSERT INTO "ABC"."TEST" VALUES ('26');
INSERT INTO "ABC"."TEST" VALUES ('49');
INSERT INTO "ABC"."TEST" VALUES ('99');

-- ----------------------------
-- Table structure for USER_ANIME_STAR
-- ----------------------------
DROP TABLE "ABC"."USER_ANIME_STAR";
CREATE TABLE "ABC"."USER_ANIME_STAR" (
  "USERNAME" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "ANIME_ID" NUMBER(6,0) VISIBLE NOT NULL,
  "STAR" NUMBER(2,0) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USER_ANIME_STAR
-- ----------------------------
INSERT INTO "ABC"."USER_ANIME_STAR" VALUES ('razin', '1000', '5');
INSERT INTO "ABC"."USER_ANIME_STAR" VALUES ('razin', '1004', '3');
INSERT INTO "ABC"."USER_ANIME_STAR" VALUES ('razin', '1006', '5');
INSERT INTO "ABC"."USER_ANIME_STAR" VALUES ('razin', '1009', '5');
INSERT INTO "ABC"."USER_ANIME_STAR" VALUES ('razin', '1001', '4');
INSERT INTO "ABC"."USER_ANIME_STAR" VALUES ('razin', '1002', '5');
INSERT INTO "ABC"."USER_ANIME_STAR" VALUES ('razin', '1003', '4');
INSERT INTO "ABC"."USER_ANIME_STAR" VALUES ('razin', '1013', '5');
INSERT INTO "ABC"."USER_ANIME_STAR" VALUES ('forhad', '1000', '5');

-- ----------------------------
-- Table structure for USER_PREFERENCE
-- ----------------------------
DROP TABLE "ABC"."USER_PREFERENCE";
CREATE TABLE "ABC"."USER_PREFERENCE" (
  "USERNAME" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "GENRE_NAME" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "PREFERENCE_POINTS" NUMBER(5,2) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USER_PREFERENCE
-- ----------------------------
INSERT INTO "ABC"."USER_PREFERENCE" VALUES ('razin', 'Sci-Fi', '2');
INSERT INTO "ABC"."USER_PREFERENCE" VALUES ('razin', 'Slice-of-life', '1');
INSERT INTO "ABC"."USER_PREFERENCE" VALUES ('forhad', 'Action', '3');
INSERT INTO "ABC"."USER_PREFERENCE" VALUES ('forhad', 'Adventure', '3.5');
INSERT INTO "ABC"."USER_PREFERENCE" VALUES ('forhad', 'Fantasy', '3.5');
INSERT INTO "ABC"."USER_PREFERENCE" VALUES ('forhad', 'Mystery', '2');
INSERT INTO "ABC"."USER_PREFERENCE" VALUES ('razin', 'Action', '6');
INSERT INTO "ABC"."USER_PREFERENCE" VALUES ('razin', 'Adventure', '4');
INSERT INTO "ABC"."USER_PREFERENCE" VALUES ('razin', 'Fantasy', '3.5');
INSERT INTO "ABC"."USER_PREFERENCE" VALUES ('razin', 'Mystery', '4.5');
INSERT INTO "ABC"."USER_PREFERENCE" VALUES ('razin', 'Comedy', '2.5');
INSERT INTO "ABC"."USER_PREFERENCE" VALUES ('razin', 'Romance', '3.5');
INSERT INTO "ABC"."USER_PREFERENCE" VALUES ('razin', 'Supernatural', '5');
INSERT INTO "ABC"."USER_PREFERENCE" VALUES ('razin', 'Drama', '4');
INSERT INTO "ABC"."USER_PREFERENCE" VALUES ('forhad', 'Romance', '1');
INSERT INTO "ABC"."USER_PREFERENCE" VALUES ('forhad', 'Sci-Fi', '0.5');
INSERT INTO "ABC"."USER_PREFERENCE" VALUES ('forhad', 'Comedy', '1');
INSERT INTO "ABC"."USER_PREFERENCE" VALUES ('forhad', 'Supernatural', '1.5');
INSERT INTO "ABC"."USER_PREFERENCE" VALUES ('forhad', 'Drama', '0.5');
INSERT INTO "ABC"."USER_PREFERENCE" VALUES ('forhad', 'Slice-of-life', '0.5');

-- ----------------------------
-- Table structure for VOICE_ACTOR
-- ----------------------------
DROP TABLE "ABC"."VOICE_ACTOR";
CREATE TABLE "ABC"."VOICE_ACTOR" (
  "PERSONNEL_ID" NUMBER(6,0) VISIBLE NOT NULL,
  "FIRST_NAME" VARCHAR2(20 BYTE) VISIBLE,
  "LAST_NAME" VARCHAR2(20 BYTE) VISIBLE,
  "BIRTHDAY" DATE VISIBLE,
  "ADDRESS" VARCHAR2(120 BYTE) VISIBLE,
  "WEBSITE" VARCHAR2(30 BYTE) VISIBLE,
  "ROLE_SPECIALIZATION" VARCHAR2(20 BYTE) VISIBLE,
  "PICTURE_ID" VARCHAR2(50 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of VOICE_ACTOR
-- ----------------------------
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('131', 'Airi', 'Sasaki', TO_DATE('2009-03-18 15:16:40', 'SYYYY-MM-DD HH24:MI:SS'), '5-2-13 Higashi Gotanda, Shinagawa-ku ', NULL, 'Main', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('132', 'Aika', 'Yamashita', TO_DATE('1994-09-09 00:53:17', 'SYYYY-MM-DD HH24:MI:SS'), '1-7-9 Omido, Higashiosaka', NULL, 'Supporting', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('133', 'Momoka', 'Tanaka', TO_DATE('2001-09-04 18:51:22', 'SYYYY-MM-DD HH24:MI:SS'), '5-19-8 Shinei 4 Jo, Kiyota Ward', NULL, 'Supporting', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('134', 'Chika', 'Sugawara', TO_DATE('2003-01-13 03:48:02', 'SYYYY-MM-DD HH24:MI:SS'), '6-1-14, Miyanomori 4 Jō, Chuo Ward', NULL, 'Supporting', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('135', 'Itsuki', 'Miura', TO_DATE('2003-12-21 01:10:16', 'SYYYY-MM-DD HH24:MI:SS'), '1-1-17 Deshiro, Nishinari Ward', NULL, 'Protagonist', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('136', 'Eiko', 'Harada', TO_DATE('1999-01-28 02:06:42', 'SYYYY-MM-DD HH24:MI:SS'), '4-9-6 Kamihigashi, Hirano Ward', NULL, 'Main', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('137', 'Akina', 'Noguchi', TO_DATE('1992-12-16 08:58:24', 'SYYYY-MM-DD HH24:MI:SS'), '3-9-3 Gakuenminami', NULL, 'Antagonist', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('138', 'Fumiko', 'Takada', TO_DATE('2006-05-19 16:30:04', 'SYYYY-MM-DD HH24:MI:SS'), '2-1-16 Kaminopporo 1 Jo, Atsubetsu Ward', NULL, 'Antagonist', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('139', 'Rena', 'Yoshida', TO_DATE('2003-12-21 15:27:06', 'SYYYY-MM-DD HH24:MI:SS'), '1-7-19 Saidaiji Akodacho', NULL, 'Main', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('140', 'Kaguya', 'Sato', TO_DATE('2007-08-26 14:10:37', 'SYYYY-MM-DD HH24:MI:SS'), '2-5-14 Chitose, Atsuta Ward', NULL, 'Main', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('141', 'Kaito', 'Sano', TO_DATE('2008-11-22 13:25:11', 'SYYYY-MM-DD HH24:MI:SS'), '13-3-13 Toyohira 3 Jo, Toyohira Ward', NULL, 'Main', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('142', 'Sasuke', 'Ueno', TO_DATE('1999-05-27 10:56:38', 'SYYYY-MM-DD HH24:MI:SS'), '5-4-7 Kikusui 3 Jo, Shiroishi Ward,', NULL, 'Antagonist', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('143', 'Yamato', 'Masuda', TO_DATE('1992-01-24 10:46:37', 'SYYYY-MM-DD HH24:MI:SS'), '1-5-17, Higashi-Shimbashi, Minato-ku', NULL, 'Protagonist', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('144', 'Ayato', 'Kudo', TO_DATE('2009-04-12 07:59:04', 'SYYYY-MM-DD HH24:MI:SS'), '1-5-5, Higashi-Shimbashi, Minato-ku', NULL, 'Main', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('145', 'Minato', 'Yamaguchi', TO_DATE('1996-04-04 19:19:44', 'SYYYY-MM-DD HH24:MI:SS'), '4-9-9 Kamihigashi, Hirano Ward', NULL, 'Supporting', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('146', 'Takuya', 'Kaneko', TO_DATE('1996-08-18 02:39:19', 'SYYYY-MM-DD HH24:MI:SS'), '4 3-803 Kusunokiajima, Kita Ward', NULL, 'Supporting', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('147', 'Hibiki', 'Ueno', TO_DATE('1999-12-19 02:33:43', 'SYYYY-MM-DD HH24:MI:SS'), '13-3-16 Toyohira 3 Jo, Toyohira Ward', NULL, 'Protagonist', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('148', 'Hisao', 'Ando', TO_DATE('1996-05-15 16:47:50', 'SYYYY-MM-DD HH24:MI:SS'), '5-2-6 Kikusui 3 Jo, Shiroishi Ward', NULL, 'Antagonist', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('149', 'Junichiro', 'Miyazaki', TO_DATE('2000-11-19 17:21:10', 'SYYYY-MM-DD HH24:MI:SS'), '2-1-11 Tenjinnomori, Nishinari Ward', NULL, 'Protagonist', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('150', 'Hyousuke', 'Yamazaki', TO_DATE('1997-12-02 20:03:13', 'SYYYY-MM-DD HH24:MI:SS'), '2 1-1 Honjocho, Yamatokoriyama', NULL, 'Main', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('120', 'Eita', 'Chiba', TO_DATE('1998-02-07 07:59:19', 'SYYYY-MM-DD HH24:MI:SS'), '5-2-10 Higashi Gotanda, Shinagawa-ku ', NULL, 'Protagonist', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('121', 'Shin', 'Furukawa', TO_DATE('2015-06-14 03:00:37', 'SYYYY-MM-DD HH24:MI:SS'), '672 S Broadway', NULL, 'Antagonist', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('122', 'Tomohito', 'Nagase', TO_DATE('1980-07-10 22:30:46', 'SYYYY-MM-DD HH24:MI:SS'), '411 Figueroa Street', NULL, 'Supporting', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('123', 'George', 'Wada', TO_DATE('1985-02-04 21:37:27', 'SYYYY-MM-DD HH24:MI:SS'), '593 Wall Street', NULL, 'Supporting', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('124', 'Tetsuya', 'Endō', TO_DATE('1985-12-17 02:20:22', 'SYYYY-MM-DD HH24:MI:SS'), '608 Ridgewood Road', NULL, 'Protagonist', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('125', 'Yasuyuki', 'Nishiya', TO_DATE('1983-09-26 19:16:30', 'SYYYY-MM-DD HH24:MI:SS'), '6 1-1 Honjocho, Yamatokoriyama', NULL, 'Antagonist', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('126', 'Sakuno', 'Kiyota', TO_DATE('2000-04-02 20:37:22', 'SYYYY-MM-DD HH24:MI:SS'), '292 Little Clarendon St', NULL, 'Supporting', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('127', 'Hitoshi', 'Ito', TO_DATE('1992-11-26 19:56:57', 'SYYYY-MM-DD HH24:MI:SS'), '3 Wicklow Road', NULL, 'Supporting', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('128', 'Makoto', 'Kimura', TO_DATE('2015-06-19 07:27:52', 'SYYYY-MM-DD HH24:MI:SS'), '401 Figueroa Street', NULL, 'Supporting', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('129', 'Mariko', 'Nishimiya', TO_DATE('1980-07-10 22:30:46', 'SYYYY-MM-DD HH24:MI:SS'), '397 Broadway', NULL, 'Main', NULL);
INSERT INTO "ABC"."VOICE_ACTOR" VALUES ('130', 'Kei', 'Kashiwagi', TO_DATE('1996-05-10 09:37:46', 'SYYYY-MM-DD HH24:MI:SS'), '6 1-1 Honjocho, Yamatokoriyama', NULL, 'Main', NULL);

-- ----------------------------
-- Table structure for VOTED
-- ----------------------------
DROP TABLE "ABC"."VOTED";
CREATE TABLE "ABC"."VOTED" (
  "USERNAME" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "REVIEW_ID" NUMBER(6,0) VISIBLE NOT NULL,
  "VOTE_COMMENT" VARCHAR2(50 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of VOTED
-- ----------------------------
INSERT INTO "ABC"."VOTED" VALUES ('razin', '73', NULL);
INSERT INTO "ABC"."VOTED" VALUES ('forhad', '68', NULL);
INSERT INTO "ABC"."VOTED" VALUES ('razin', '68', NULL);
INSERT INTO "ABC"."VOTED" VALUES ('razin', '70', NULL);
INSERT INTO "ABC"."VOTED" VALUES ('john', '2', NULL);

-- ----------------------------
-- Table structure for WATCHED_LIST
-- ----------------------------
DROP TABLE "ABC"."WATCHED_LIST";
CREATE TABLE "ABC"."WATCHED_LIST" (
  "USERNAME" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "ANIME_ID" NUMBER(6,0) VISIBLE NOT NULL,
  "FAVOURITED" NUMBER(1,0) VISIBLE DEFAULT 0 NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of WATCHED_LIST
-- ----------------------------
INSERT INTO "ABC"."WATCHED_LIST" VALUES ('razin', '1003', '1');
INSERT INTO "ABC"."WATCHED_LIST" VALUES ('razin', '1001', '0');
INSERT INTO "ABC"."WATCHED_LIST" VALUES ('razin', '1000', '1');
INSERT INTO "ABC"."WATCHED_LIST" VALUES ('razin', '1005', '0');
INSERT INTO "ABC"."WATCHED_LIST" VALUES ('razin', '1013', '1');
INSERT INTO "ABC"."WATCHED_LIST" VALUES ('forhad', '1000', '1');
INSERT INTO "ABC"."WATCHED_LIST" VALUES ('forhad', '1002', '0');
INSERT INTO "ABC"."WATCHED_LIST" VALUES ('forhad', '1003', '0');
INSERT INTO "ABC"."WATCHED_LIST" VALUES ('forhad', '1004', '0');
INSERT INTO "ABC"."WATCHED_LIST" VALUES ('forhad', '1012', '0');
INSERT INTO "ABC"."WATCHED_LIST" VALUES ('forhad', '1015', '0');

-- ----------------------------
-- Table structure for WRITER
-- ----------------------------
DROP TABLE "ABC"."WRITER";
CREATE TABLE "ABC"."WRITER" (
  "PERSONNEL_ID" NUMBER(6,0) VISIBLE NOT NULL,
  "FIRST_NAME" VARCHAR2(20 BYTE) VISIBLE,
  "LAST_NAME" VARCHAR2(20 BYTE) VISIBLE,
  "BIRTHDAY" DATE VISIBLE,
  "ADDRESS" VARCHAR2(120 BYTE) VISIBLE,
  "WEBSITE" VARCHAR2(30 BYTE) VISIBLE,
  "GENRE_SPECIALIZATION" VARCHAR2(20 BYTE) VISIBLE,
  "PICTURE_ID" VARCHAR2(50 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of WRITER
-- ----------------------------
INSERT INTO "ABC"."WRITER" VALUES ('100', 'Arimura', 'Aoshi', TO_DATE('2012-12-01 08:09:05', 'SYYYY-MM-DD HH24:MI:SS'), '613 Nostrand Ave', NULL, 'Action', NULL);
INSERT INTO "ABC"."WRITER" VALUES ('104', 'Yamamoto ', 'Kenta', TO_DATE('2020-06-29 23:48:38', 'SYYYY-MM-DD HH24:MI:SS'), '670 Wicklow Road', NULL, 'Comedy', NULL);
INSERT INTO "ABC"."WRITER" VALUES ('105', 'Fan Sum ', 'Wing', TO_DATE('2015-06-14 03:00:37', 'SYYYY-MM-DD HH24:MI:SS'), '672 S Broadway', NULL, 'Adventure', NULL);
INSERT INTO "ABC"."WRITER" VALUES ('101', 'Billy ', 'Murphy', TO_DATE('2005-08-11 07:08:04', 'SYYYY-MM-DD HH24:MI:SS'), '1-7-13 Saidaiji Akodacho', NULL, 'Adventure', NULL);
INSERT INTO "ABC"."WRITER" VALUES ('102', 'Gerald ', 'Shaw', TO_DATE('2010-08-10 22:13:36', 'SYYYY-MM-DD HH24:MI:SS'), '2-5-19 Chitose, Atsuta Ward', NULL, 'Fantasy', NULL);
INSERT INTO "ABC"."WRITER" VALUES ('103', 'Ku Ching ', 'Wan', TO_DATE('2015-06-19 07:27:52', 'SYYYY-MM-DD HH24:MI:SS'), '401 Figueroa Street', NULL, 'Romance', NULL);
INSERT INTO "ABC"."WRITER" VALUES ('106', 'Reki', 'Kawahara', TO_DATE('1980-07-10 22:30:46', 'SYYYY-MM-DD HH24:MI:SS'), '411 Figueroa Street', NULL, 'Fantasy', NULL);
INSERT INTO "ABC"."WRITER" VALUES ('107', 'Mary', 'Hernandez', TO_DATE('1985-02-04 21:37:27', 'SYYYY-MM-DD HH24:MI:SS'), '593 Wall Street', NULL, 'Mystery', NULL);
INSERT INTO "ABC"."WRITER" VALUES ('108', 'Annie', 'Cole', TO_DATE('1985-12-17 02:20:22', 'SYYYY-MM-DD HH24:MI:SS'), '608 Ridgewood Road', NULL, 'Romance', NULL);
INSERT INTO "ABC"."WRITER" VALUES ('109', 'Riku', 'Watanabe', TO_DATE('1983-09-26 19:16:30', 'SYYYY-MM-DD HH24:MI:SS'), '6 1-1 Honjocho, Yamatokoriyama', NULL, 'Romance', NULL);
INSERT INTO "ABC"."WRITER" VALUES ('110', 'Tracy', 'Spencer', TO_DATE('2000-04-02 20:37:22', 'SYYYY-MM-DD HH24:MI:SS'), '292 Little Clarendon St', NULL, 'Slice-of-life', NULL);
INSERT INTO "ABC"."WRITER" VALUES ('111', 'Rebecca', 'Gutierrez', TO_DATE('1992-11-26 19:56:57', 'SYYYY-MM-DD HH24:MI:SS'), '3 Wicklow Road', NULL, 'Sports', NULL);
INSERT INTO "ABC"."WRITER" VALUES ('112', 'Beverly', 'Patel', TO_DATE('1988-03-30 21:43:51', 'SYYYY-MM-DD HH24:MI:SS'), '131 Central Avenue', NULL, 'Sci-Fi', NULL);
INSERT INTO "ABC"."WRITER" VALUES ('113', 'Hana', 'Ueda', TO_DATE('2000-08-27 23:34:24', 'SYYYY-MM-DD HH24:MI:SS'), '4-9-3 Kamihigashi, Hirano Ward', NULL, 'Drama', NULL);
INSERT INTO "ABC"."WRITER" VALUES ('114', 'Clara', 'Wilson', TO_DATE('1987-05-15 02:13:35', 'SYYYY-MM-DD HH24:MI:SS'), '870 East Cooke Road', NULL, 'Drama', NULL);
INSERT INTO "ABC"."WRITER" VALUES ('115', 'Joshua', 'Medina', TO_DATE('1996-05-10 09:37:46', 'SYYYY-MM-DD HH24:MI:SS'), '872 Spring Gardens', NULL, 'Supernatural', NULL);

-- ----------------------------
-- Function structure for UPDATE_ALL_ANIME_RANK
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "ABC"."UPDATE_ALL_ANIME_RANK" AS
BEGIN
		I := 1;
	FOR A IN ( SELECT * FROM ANIME ORDER BY AVG_RATING DESC )
	LOOP
	UPDATE ANIME 
	SET RANK = I 
	WHERE
		ANIME_ID = A.ANIME_ID;
	I := I + 1;
	
END LOOP;

END;
SELECT
	ANIME_TITLE,
	RANK 
FROM
	ANIME 
ORDER BY
	AVG_RATING;
BEGIN
		UPDATE CHARACTER 
		SET PICTURE_ID = ANIME_ID || '-' || FIRST_NAME;
	
END;


SELECT
	FIRST_NAME,
	LAST_NAME,
	PICTURE_ID,
	VOICE_ACTOR_ID
FROM
	CHARACTER C 
WHERE
	ANIME_ID = 1000
/

-- ----------------------------
-- Function structure for UPDATE_ANIME_RATING
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "ABC"."UPDATE_ANIME_RATING" AS
BEGIN
	SELECT NVL(AVG(STAR),0) INTO AVERAGE FROM USER_ANIME_STAR WHERE ANIME_ID = AID;
	UPDATE ANIME SET AVG_RATING = AVERAGE WHERE ANIME_ID = AID;	
END;
/

-- ----------------------------
-- Sequence structure for ANIME_ID_SEQ
-- ----------------------------
DROP SEQUENCE "ABC"."ANIME_ID_SEQ";
CREATE SEQUENCE "ABC"."ANIME_ID_SEQ" MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for ISEQ$$_80352
-- ----------------------------
DROP SEQUENCE "ABC"."ISEQ$$_80352";
CREATE SEQUENCE "ABC"."ISEQ$$_80352" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for PERSONNEL_ID_SEQ
-- ----------------------------
DROP SEQUENCE "ABC"."PERSONNEL_ID_SEQ";
CREATE SEQUENCE "ABC"."PERSONNEL_ID_SEQ" MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Primary Key structure for table ACCOUNT
-- ----------------------------
ALTER TABLE "ABC"."ACCOUNT" ADD CONSTRAINT "SYS_C007899" PRIMARY KEY ("USERNAME");

-- ----------------------------
-- Checks structure for table ACCOUNT
-- ----------------------------
ALTER TABLE "ABC"."ACCOUNT" ADD CONSTRAINT "SYS_C007898" CHECK ("EMAIL" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ABC"."ACCOUNT" ADD CONSTRAINT "SYS_C008397" CHECK ("PASSWORD" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ANIME
-- ----------------------------
ALTER TABLE "ABC"."ANIME" ADD CONSTRAINT "SYS_C007901" PRIMARY KEY ("ANIME_ID");

-- ----------------------------
-- Checks structure for table ANIME
-- ----------------------------
ALTER TABLE "ABC"."ANIME" ADD CONSTRAINT "SYS_C007900" CHECK (release_season in ('Fall', 'Winter', 'Spring', 'Summer')) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ABC"."ANIME" ADD CONSTRAINT "SYS_C007910" CHECK ("STUDIO_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ABC"."ANIME" ADD CONSTRAINT "SYS_C007911" CHECK ("WRITER" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ANIME_GENRE
-- ----------------------------
ALTER TABLE "ABC"."ANIME_GENRE" ADD CONSTRAINT "SYS_C007920" PRIMARY KEY ("ANIME_ID", "GENRE_NAME");

-- ----------------------------
-- Primary Key structure for table ANIME_PICTURE
-- ----------------------------
ALTER TABLE "ABC"."ANIME_PICTURE" ADD CONSTRAINT "SYS_C007904" PRIMARY KEY ("ANIME_ID", "PICTURE_ID");

-- ----------------------------
-- Primary Key structure for table CHARACTER
-- ----------------------------
ALTER TABLE "ABC"."CHARACTER" ADD CONSTRAINT "SYS_C007917" PRIMARY KEY ("ANIME_ID", "FIRST_NAME", "LAST_NAME");

-- ----------------------------
-- Checks structure for table CHARACTER
-- ----------------------------
ALTER TABLE "ABC"."CHARACTER" ADD CONSTRAINT "SYS_C007916" CHECK (age > 0) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table EPISODE
-- ----------------------------
ALTER TABLE "ABC"."EPISODE" ADD CONSTRAINT "SYS_C007906" PRIMARY KEY ("ANIME_ID", "SEASON", "EPISODE_NUMBER");

-- ----------------------------
-- Primary Key structure for table GENRE
-- ----------------------------
ALTER TABLE "ABC"."GENRE" ADD CONSTRAINT "SYS_C007892" PRIMARY KEY ("GENRE_NAME");

-- ----------------------------
-- Primary Key structure for table PERSONNEL
-- ----------------------------
ALTER TABLE "ABC"."PERSONNEL" ADD CONSTRAINT "SYS_C007893" PRIMARY KEY ("PERSONNEL_ID");

-- ----------------------------
-- Primary Key structure for table RATED
-- ----------------------------
ALTER TABLE "ABC"."RATED" ADD CONSTRAINT "SYS_C007927" PRIMARY KEY ("USERNAME", "ANIME_ID", "SEASON", "EPISODE_NUMBER");

-- ----------------------------
-- Checks structure for table RATED
-- ----------------------------
ALTER TABLE "ABC"."RATED" ADD CONSTRAINT "SYS_C007926" CHECK (stars >=0 and stars <=5) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table REVIEW
-- ----------------------------
ALTER TABLE "ABC"."REVIEW" ADD CONSTRAINT "SYS_C008426" PRIMARY KEY ("REVIEW_ID");

-- ----------------------------
-- Checks structure for table REVIEW
-- ----------------------------
ALTER TABLE "ABC"."REVIEW" ADD CONSTRAINT "SYS_C008423" CHECK ("REVIEW_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ABC"."REVIEW" ADD CONSTRAINT "SYS_C008424" CHECK ("CONTENT" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ABC"."REVIEW" ADD CONSTRAINT "SYS_C008425" CHECK (votes >=0) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table REVIEWED
-- ----------------------------
ALTER TABLE "ABC"."REVIEWED" ADD CONSTRAINT "SYS_C008427" PRIMARY KEY ("USERNAME", "ANIME_ID", "REVIEW_ID");

-- ----------------------------
-- Primary Key structure for table STUDIO
-- ----------------------------
ALTER TABLE "ABC"."STUDIO" ADD CONSTRAINT "SYS_C007897" PRIMARY KEY ("STUDIO_NAME");

-- ----------------------------
-- Primary Key structure for table TEST
-- ----------------------------
ALTER TABLE "ABC"."TEST" ADD CONSTRAINT "SYS_C008477" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table USER_ANIME_STAR
-- ----------------------------
ALTER TABLE "ABC"."USER_ANIME_STAR" ADD CONSTRAINT "SYS_C008417" PRIMARY KEY ("USERNAME", "ANIME_ID");

-- ----------------------------
-- Checks structure for table USER_ANIME_STAR
-- ----------------------------
ALTER TABLE "ABC"."USER_ANIME_STAR" ADD CONSTRAINT "SYS_C008416" CHECK (star >= 1 and star <= 5) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table USER_ANIME_STAR
-- ----------------------------
CREATE TRIGGER "ABC"."UPDATE_USER_PREF_STAR" AFTER INSERT OR UPDATE ON "ABC"."USER_ANIME_STAR" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
DECLARE
	N_USER VARCHAR2(20);
	N_GENRE VARCHAR2(20);
	N_POINTS NUMBER(5,2);
	I_POINTS NUMBER(5,2);
BEGIN
	FOR R IN (SELECT GENRE_NAME FROM ANIME_GENRE WHERE ANIME_ID = :NEW.ANIME_ID)
	LOOP
		BEGIN
				n_user := :NEW.USERNAME;
				n_genre := R.GENRE_NAME;
				
				IF INSERTING THEN
					I_POINTS := 0.5*(:NEW.STAR) - 1.5;
				END IF;
				IF UPDATING THEN
					I_POINTS := 0.5*(:NEW.STAR - :OLD.STAR);
				END IF;
				select preference_points into n_points from user_preference where USERNAME = n_user and genre_NAME = n_genre;
				update user_preference set preference_points = N_POINTS + I_POINTS where USERNAME = n_user and genre_NAME = n_genre;
	  EXCEPTION
				when NO_DATA_FOUND THEN
					INSERT into user_preference values (n_user, n_genre, I_POINTS);
		END;
	END LOOP;
END;
/
CREATE TRIGGER "ABC"."UPDATE_USER_PREF_STAR_DELETE" AFTER DELETE ON "ABC"."USER_ANIME_STAR" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
DECLARE
	N_USER VARCHAR2(20);
	N_GENRE VARCHAR2(20);
	N_POINTS NUMBER(5,2);
	I_POINTS NUMBER(5,2);
BEGIN
	FOR R IN (SELECT GENRE_NAME FROM ANIME_GENRE WHERE ANIME_ID = :OLD.ANIME_ID)
	LOOP
		BEGIN
				n_user := :OLD.USERNAME;
				n_genre := R.GENRE_NAME;
				
				I_POINTS := -0.5*(:OLD.STAR) + 1.5;
				select preference_points into n_points from user_preference where USERNAME = n_user and genre_NAME = n_genre;
				update user_preference set preference_points = N_POINTS + I_POINTS where USERNAME = n_user and genre_NAME = n_genre;
	  EXCEPTION
				when NO_DATA_FOUND THEN
					update user_preference set preference_points = N_POINTS + I_POINTS where USERNAME = n_user and genre_NAME = n_genre;
		END;
	END LOOP;
END;
/

-- ----------------------------
-- Primary Key structure for table USER_PREFERENCE
-- ----------------------------
ALTER TABLE "ABC"."USER_PREFERENCE" ADD CONSTRAINT "SYS_C008398" PRIMARY KEY ("USERNAME", "GENRE_NAME");

-- ----------------------------
-- Primary Key structure for table VOICE_ACTOR
-- ----------------------------
ALTER TABLE "ABC"."VOICE_ACTOR" ADD CONSTRAINT "SYS_C007894" PRIMARY KEY ("PERSONNEL_ID");

-- ----------------------------
-- Primary Key structure for table VOTED
-- ----------------------------
ALTER TABLE "ABC"."VOTED" ADD CONSTRAINT "SYS_C008431" PRIMARY KEY ("USERNAME", "REVIEW_ID");

-- ----------------------------
-- Primary Key structure for table WATCHED_LIST
-- ----------------------------
ALTER TABLE "ABC"."WATCHED_LIST" ADD CONSTRAINT "SYS_C008420" PRIMARY KEY ("ANIME_ID", "USERNAME");

-- ----------------------------
-- Checks structure for table WATCHED_LIST
-- ----------------------------
ALTER TABLE "ABC"."WATCHED_LIST" ADD CONSTRAINT "SYS_C008475" CHECK ("FAVOURITED" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ABC"."WATCHED_LIST" ADD CONSTRAINT "SYS_C008476" CHECK ( FAVOURITED IN (0,1)) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table WATCHED_LIST
-- ----------------------------
CREATE TRIGGER "ABC"."UPDATE_USER_PREF" AFTER INSERT ON "ABC"."WATCHED_LIST" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
DECLARE
	n_user VARCHAR2(20);
	n_genre VARCHAR2(20);
	n_points NUMBER;
BEGIN
	FOR R IN (SELECT GENRE_NAME from ANIME_GENRE where ANIME_ID = :new.ANIME_id)
	LOOP
		BEGIN
				n_user := :new.USERNAME;
				n_genre := R.GENRE_NAME;
				
				select preference_points into n_points from user_preference where USERNAME = n_user and genre_NAME = n_genre;
				update user_preference set preference_points = n_points+0.5 where USERNAME = n_user and genre_NAME = n_genre;
	  EXCEPTION
				when NO_DATA_FOUND THEN
					INSERT into user_preference values (n_user, n_genre, 0.5);
		END;
	END LOOP;
END;
/
CREATE TRIGGER "ABC"."UPDATE_USER_PREF_DELETE" AFTER DELETE ON "ABC"."WATCHED_LIST" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
DECLARE
	n_user VARCHAR2(20);
	n_genre VARCHAR2(20);
	n_points NUMBER(5,2);
BEGIN
	FOR R IN (SELECT GENRE_NAME from ANIME_GENRE where ANIME_ID = :OLD.ANIME_id)
	LOOP
		BEGIN
			n_user := :OLD.USERNAME;
			n_genre := R.GENRE_NAME;
			
			select preference_points into n_points from user_preference where USERNAME = n_user and genre_NAME = n_genre;
			update user_preference set preference_points = n_points-0.5 where USERNAME = n_user and genre_NAME = n_genre;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
				INSERT INTO USER_PREFERENCE(USERNAME, GENRE_NAME, PREFERENCE_POINTS) VALUES(N_USER, N_GENRE, -0.5);
		END;
	END LOOP;
end;
/
CREATE TRIGGER "ABC"."UPDATE_USER_PREF_FAV" AFTER UPDATE OF "FAVOURITED" ON "ABC"."WATCHED_LIST" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
DECLARE
	n_user VARCHAR2(20);
	n_genre VARCHAR2(20);
	n_points NUMBER;
	i_points NUMBER;
BEGIN
	FOR R IN (SELECT GENRE_NAME from ANIME_GENRE where ANIME_ID = :new.ANIME_id)
	LOOP
		BEGIN
				n_user := :new.USERNAME;
				n_genre := R.GENRE_NAME;
				i_points := (:NEW.FAVOURITED - :OLD.FAVOURITED) * 0.5;
				
				update user_preference set preference_points = preference_points + i_points where USERNAME = n_user and genre_NAME = n_genre;
	  EXCEPTION
				when NO_DATA_FOUND THEN
					INSERT into user_preference values (n_user, n_genre, i_points);
		END;
	END LOOP;
END;
/

-- ----------------------------
-- Primary Key structure for table WRITER
-- ----------------------------
ALTER TABLE "ABC"."WRITER" ADD CONSTRAINT "SYS_C007895" PRIMARY KEY ("PERSONNEL_ID");

-- ----------------------------
-- Foreign Keys structure for table ANIME
-- ----------------------------
ALTER TABLE "ABC"."ANIME" ADD CONSTRAINT "SYS_C007902" FOREIGN KEY ("STUDIO_NAME") REFERENCES "ABC"."STUDIO" ("STUDIO_NAME") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ABC"."ANIME" ADD CONSTRAINT "SYS_C007903" FOREIGN KEY ("WRITER") REFERENCES "ABC"."WRITER" ("PERSONNEL_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ANIME_GENRE
-- ----------------------------
ALTER TABLE "ABC"."ANIME_GENRE" ADD CONSTRAINT "SYS_C007921" FOREIGN KEY ("ANIME_ID") REFERENCES "ABC"."ANIME" ("ANIME_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ABC"."ANIME_GENRE" ADD CONSTRAINT "SYS_C007922" FOREIGN KEY ("GENRE_NAME") REFERENCES "ABC"."GENRE" ("GENRE_NAME") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ANIME_PICTURE
-- ----------------------------
ALTER TABLE "ABC"."ANIME_PICTURE" ADD CONSTRAINT "SYS_C007905" FOREIGN KEY ("ANIME_ID") REFERENCES "ABC"."ANIME" ("ANIME_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table CHARACTER
-- ----------------------------
ALTER TABLE "ABC"."CHARACTER" ADD CONSTRAINT "SYS_C007918" FOREIGN KEY ("ANIME_ID") REFERENCES "ABC"."ANIME" ("ANIME_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ABC"."CHARACTER" ADD CONSTRAINT "SYS_C007919" FOREIGN KEY ("VOICE_ACTOR_ID") REFERENCES "ABC"."VOICE_ACTOR" ("PERSONNEL_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table EPISODE
-- ----------------------------
ALTER TABLE "ABC"."EPISODE" ADD CONSTRAINT "SYS_C007907" FOREIGN KEY ("ANIME_ID") REFERENCES "ABC"."ANIME" ("ANIME_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table RATED
-- ----------------------------
ALTER TABLE "ABC"."RATED" ADD CONSTRAINT "SYS_C007928" FOREIGN KEY ("ANIME_ID", "SEASON", "EPISODE_NUMBER") REFERENCES "ABC"."EPISODE" ("ANIME_ID", "SEASON", "EPISODE_NUMBER") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ABC"."RATED" ADD CONSTRAINT "SYS_C007929" FOREIGN KEY ("USERNAME") REFERENCES "ABC"."ACCOUNT" ("USERNAME") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table REVIEWED
-- ----------------------------
ALTER TABLE "ABC"."REVIEWED" ADD CONSTRAINT "SYS_C008428" FOREIGN KEY ("ANIME_ID") REFERENCES "ABC"."ANIME" ("ANIME_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ABC"."REVIEWED" ADD CONSTRAINT "SYS_C008429" FOREIGN KEY ("USERNAME") REFERENCES "ABC"."ACCOUNT" ("USERNAME") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ABC"."REVIEWED" ADD CONSTRAINT "SYS_C008430" FOREIGN KEY ("REVIEW_ID") REFERENCES "ABC"."REVIEW" ("REVIEW_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table USER_ANIME_STAR
-- ----------------------------
ALTER TABLE "ABC"."USER_ANIME_STAR" ADD CONSTRAINT "SYS_C008418" FOREIGN KEY ("USERNAME") REFERENCES "ABC"."ACCOUNT" ("USERNAME") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ABC"."USER_ANIME_STAR" ADD CONSTRAINT "SYS_C008419" FOREIGN KEY ("ANIME_ID") REFERENCES "ABC"."ANIME" ("ANIME_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table USER_PREFERENCE
-- ----------------------------
ALTER TABLE "ABC"."USER_PREFERENCE" ADD CONSTRAINT "SYS_C008399" FOREIGN KEY ("USERNAME") REFERENCES "ABC"."ACCOUNT" ("USERNAME") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ABC"."USER_PREFERENCE" ADD CONSTRAINT "SYS_C008400" FOREIGN KEY ("GENRE_NAME") REFERENCES "ABC"."GENRE" ("GENRE_NAME") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table VOICE_ACTOR
-- ----------------------------
ALTER TABLE "ABC"."VOICE_ACTOR" ADD CONSTRAINT "SYS_C007909" FOREIGN KEY ("PERSONNEL_ID") REFERENCES "ABC"."PERSONNEL" ("PERSONNEL_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table VOTED
-- ----------------------------
ALTER TABLE "ABC"."VOTED" ADD CONSTRAINT "SYS_C008432" FOREIGN KEY ("USERNAME") REFERENCES "ABC"."ACCOUNT" ("USERNAME") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ABC"."VOTED" ADD CONSTRAINT "SYS_C008433" FOREIGN KEY ("REVIEW_ID") REFERENCES "ABC"."REVIEW" ("REVIEW_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table WATCHED_LIST
-- ----------------------------
ALTER TABLE "ABC"."WATCHED_LIST" ADD CONSTRAINT "SYS_C008421" FOREIGN KEY ("ANIME_ID") REFERENCES "ABC"."ANIME" ("ANIME_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ABC"."WATCHED_LIST" ADD CONSTRAINT "SYS_C008422" FOREIGN KEY ("USERNAME") REFERENCES "ABC"."ACCOUNT" ("USERNAME") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table WRITER
-- ----------------------------
ALTER TABLE "ABC"."WRITER" ADD CONSTRAINT "SYS_C007896" FOREIGN KEY ("GENRE_SPECIALIZATION") REFERENCES "ABC"."GENRE" ("GENRE_NAME") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ABC"."WRITER" ADD CONSTRAINT "SYS_C007908" FOREIGN KEY ("PERSONNEL_ID") REFERENCES "ABC"."PERSONNEL" ("PERSONNEL_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
