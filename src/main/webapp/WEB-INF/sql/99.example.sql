USE test;
SELECT `Board`.`id`,
    `Board`.`title`,
    `Board`.`content`,
    `Board`.`writer`,
    `Board`.`inserted`,
    `Board`.`updated`,
    `Board`.`country`,
    `Board`.`artist`,
    `Board`.`age`,
    `Board`.`color`,
    `Board`.`masterpiece`,
    `Board`.`approval`
FROM `test`.`Board`;
SELECT `Masterpiece`.`art_number`,
    `Masterpiece`.`title`,
    `Masterpiece`.`content`,
    `Masterpiece`.`writer`,
    `Masterpiece`.`inserted`,
    `Masterpiece`.`updated`
FROM `test`.`Masterpiece`;

DROP TABLE Masterpiece;
SELECT * INTO Masterpiece FROM Board;
USE test;
CREATE TABLE Masterpiece(
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    content VARCHAR(2000) NOT NULL,
    writer VARCHAR(50) NOT NULL,
    inserted DATETIME DEFAULT NOW(),
    updated DATETIME DEFAULT NOW(),
    coutry VARCHAR(50) NOT NULL,
    artist VARCHAR(50) NOT NULL,
    age VARCHAR(50) NOT NULL,
    color VARCHAR(50) NOT NULL,
    masterpiece VARCHAR(50) NOT NULL,
    approval VARCHAR(50) NOT NULL
);
DESC Masterpiece;