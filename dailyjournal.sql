CREATE TABLE `Entries` (
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `text` TEXT NOT NULL,
    `mood_id` INTEGER NOT NULL, 
    `tag_id` INTEGER, 
    FOREIGN KEY (`mood_id`) REFERENCES `Mood`(`id`), 
    FOREIGN KEY (`tag_id`) REFERENCES `Tags`(`id`) 
)

DROP TABLE `Moods`

CREATE TABLE `Moods` (
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
   `mood` INTEGER NOT NULL
)

CREATE TABLE `Tags` (
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
   `type` INTEGER NOT NULL
)

INSERT INTO `Moods` VALUES (null, "Relaxed");
INSERT INTO `Moods` VALUES (null, "Loved");
INSERT INTO `Moods` VALUES (null, "Blah");
INSERT INTO `Moods` VALUES (null, "Stressed");
INSERT INTO `Moods` VALUES (null, "Grateful");
INSERT INTO `Moods` VALUES (null, "Silly");
INSERT INTO `Moods` VALUES (null, "Rejected");

INSERT INTO `Tags` VALUES (null, "Love");
INSERT INTO `Tags` VALUES (null, "Family");
INSERT INTO `Tags` VALUES (null, "Work");
INSERT INTO `Tags` VALUES (null, "Tired");
INSERT INTO `Tags` VALUES (null, "Excited");
INSERT INTO `Tags` VALUES (null, "Joy");
INSERT INTO `Tags` VALUES (null, "Sad");

INSERT INTO `Entries` VALUES (null, "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", 5, 6)
