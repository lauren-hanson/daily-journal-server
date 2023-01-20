CREATE TABLE `Entries` (
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
    `text` TEXT NOT NULL,
    `mood_id` INTEGER NOT NULL, 
    `tag_id` INTEGER, 
    FOREIGN KEY (`mood_id`) REFERENCES `Mood`(`id`), 
    FOREIGN KEY (`tag_id`) REFERENCES `Tags`(`id`)
)

CREATE TABLE `Moods` (
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
   `type` INTEGER NOT NULL
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

INSERT INTO `Tags` VALUES (null, "");
INSERT INTO `Tags` VALUES (null, "");
INSERT INTO `Tags` VALUES (null, "");
INSERT INTO `Tags` VALUES (null, "");
INSERT INTO `Tags` VALUES (null, "");
INSERT INTO `Tags` VALUES (null, "");
INSERT INTO `Tags` VALUES (null, "");

DROP TABLE `Entries`
