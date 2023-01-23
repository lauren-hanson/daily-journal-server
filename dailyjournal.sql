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

INSERT INTO `Tags` VALUES (null, "Love");
INSERT INTO `Tags` VALUES (null, "Family");
INSERT INTO `Tags` VALUES (null, "Work");
INSERT INTO `Tags` VALUES (null, "Tired");
INSERT INTO `Tags` VALUES (null, "Excited");
INSERT INTO `Tags` VALUES (null, "Joy");
INSERT INTO `Tags` VALUES (null, "Sad");

INSERT INTO `Entries` VALUES (null, 3, 4, "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
