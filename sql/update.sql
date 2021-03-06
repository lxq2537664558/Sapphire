ALTER TABLE charainfo
MODIFY COLUMN UPDATE_DATE DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE charastatus
MODIFY COLUMN UPDATE_DATE DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE charainfoblacklist
MODIFY COLUMN UPDATE_DATE DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE charaglobalitem
MODIFY COLUMN UPDATE_DATE DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE charainfofriendlist
MODIFY COLUMN UPDATE_DATE DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE charainfolinkshell
MODIFY COLUMN UPDATE_DATE DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE charainfosearch
MODIFY COLUMN UPDATE_DATE DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE charaitemcrystal
MODIFY COLUMN UPDATE_DATE DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE charaitemcurrency
MODIFY COLUMN UPDATE_DATE DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE charaitemgearset
MODIFY COLUMN UPDATE_DATE DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE charaiteminventory
MODIFY COLUMN UPDATE_DATE DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE charaquestnew
MODIFY COLUMN UPDATE_DATE DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE infolinkshell
MODIFY COLUMN UPDATE_DATE DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE uniqueiddata
MODIFY COLUMN UPDATE_DATE DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE charainfo
ADD `Orchestrion` binary(38) DEFAULT NULL AFTER `Mounts`;

ALTER TABLE `charainfo` CHANGE `Mounts` `Mounts` BINARY(17) NULL DEFAULT NULL;
ALTER TABLE `charainfo` CHANGE `Orchestrion` `Orchestrion` BINARY(40) NULL DEFAULT NULL;
ALTER TABLE `charainfo` CHANGE `Minions` `Minions` BINARY(40) NULL DEFAULT NULL;
ALTER TABLE `charainfo` CHANGE `QuestCompleteFlags` `QuestCompleteFlags` VARBINARY(396) NULL DEFAULT NULL;
ALTER TABLE `charainfo` CHANGE `Aetheryte` `Minions` BINARY(17) NULL DEFAULT NULL;
ALTER TABLE `charainfo` ADD COLUMN `EquipDisplayFlags` INT(3) NULL DEFAULT '0' AFTER `GMRank`;
ALTER TABLE `charainfo` ADD COLUMN `Pose` INT(3) NULL DEFAULT '0' AFTER `EquipDisplayFlags`;

ALTER TABLE `characlass` DROP PRIMARY KEY, ADD INDEX `CharacterId` (`CharacterId`);
