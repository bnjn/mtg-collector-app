# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.35)
# Database: Mtgdb
# Generation Time: 2021-09-27 17:39:37 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table mtgcards
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mtgcards`;

CREATE TABLE `mtgcards` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `image_uris.art_crop` varchar(1000) DEFAULT NULL,
  `mana_cost` varchar(1000) DEFAULT NULL,
  `cmc` float DEFAULT NULL,
  `type_line` varchar(1000) DEFAULT NULL,
  `colors` varchar(1000) DEFAULT NULL,
  `set_name` varchar(1000) DEFAULT NULL,
  `rarity` varchar(1000) DEFAULT NULL,
  `prices.usd` float DEFAULT NULL,
  `artist` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `mtgcards` WRITE;
/*!40000 ALTER TABLE `mtgcards` DISABLE KEYS */;

INSERT INTO `mtgcards` (`id`, `name`, `image_uris.art_crop`, `mana_cost`, `cmc`, `type_line`, `colors`, `set_name`, `rarity`, `prices.usd`, `artist`)
VALUES
	(1001,'Visions of Dread','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/2/7/2716d5b6-9ca7-4c8f-a363-1934221606a6.jpg?1631659443','2B',3,'Sorcery','B','Midnight Hunt Commander','rare',0.27,'Andrew Mar'),
	(1002,'Pillage','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/b/d/bdd06d55-a40f-4b0e-905b-3cd0ce12eb82.jpg?1562201923','1RR',3,'Sorcery','R','Modern Horizons','uncommon',0.12,'Jesper Ejsing'),
	(1003,'Orcish Oriflamme','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/9/b/9b568475-97db-47be-842c-03305b459fb7.jpg?1580014607','3R',4,'Enchantment','R','Eternal Masters','common',0.03,'Ben Thompson'),
	(1004,'Chain of Acid','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/1/d/1d47ddca-a363-4ab7-b7f2-d0e0043c9916.jpg?1562901859','3G',4,'Sorcery','G','Onslaught','uncommon',2.74,'Ron Spencer'),
	(1005,'Clambassadors','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/3/4/349ba052-10f7-4612-91b7-a1528c188ec3.jpg?1562799085','3U',4,'Creature - Clamfolk','U','Unglued','common',0.15,'Randy Elliott'),
	(1006,'Ember-Eye Wolf','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/9/8/98fe1e1e-b14a-4efe-894b-b9da635f007f.jpg?1576384719','1R',2,'Creature - Wolf','R','Shadows over Innistrad','common',0.09,'Anthony Palumbo'),
	(1007,'Rock Slide','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/7/e/7e01717a-d6ed-42c1-9a9a-f3f4a3d73bca.jpg?1562278136','XR',1,'Instant','R','Visions','common',0.1,'Mike Kerr'),
	(1008,'Arrogant Poet','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/5/5/556a0816-83c5-41dc-8546-213b21e2cceb.jpg?1624590711','1B',2,'Creature - Human Warlock','B','Strixhaven: School of Mages','common',0.01,'Billy Christian'),
	(1009,'Vastwood Animist','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/d/5/d5cc40e7-fb31-4540-81a1-d0c0f514c8a8.jpg?1562297097','2G',3,'Creature - Elf Shaman Ally','G','Worldwake','uncommon',0.1,'Raymond Swanland'),
	(1010,'Flame Sweep','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/4/7/4702a838-8577-49b6-8b7a-f9b6d2929481.jpg?1592516934','2R',3,'Instant','R','Core Set 2020','uncommon',0.15,'Viktor Titov'),
	(1011,'Pangosaur','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/0/3/0335d282-cd1a-4be3-8eb2-82aaee91401a.jpg?1562378944','2GG',4,'Creature - Dinosaur','G','Mercadian Masques','rare',0.28,'Mark Tedin'),
	(1012,'Healer\'s Flock','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/b/9/b93b5429-8512-4ab6-9ecd-fa270e0144f3.jpg?1626093624','WWW',3,'Creature - Bird','W','Modern Horizons 2','uncommon',0.03,'Joe Slucher'),
	(1013,'Tread Upon','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/8/7/87f04d27-f38a-4be2-8eb6-7dd0d3a1ac6d.jpg?1562789408','1G',2,'Instant','G','Dragons of Tarkir','common',0.05,'Efrem Palacios'),
	(1014,'Maralen of the Mornsong','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/b/a/ba98d363-194b-4bc0-b9fe-987c498ab6fa.jpg?1562880995','1BB',3,'Legendary Creature - Elf Wizard','B','Morningtide','rare',23.7,'Mark Zug'),
	(1015,'Stitchwing Skaab','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/f/8/f84bb1ce-a8a0-4a29-9129-b1d7041fd01a.jpg?1576384264','3U',4,'Creature - Zombie Horror','U','Shadows over Innistrad','uncommon',0.06,'Nils Hamm'),
	(1016,'Zhou Yu, Chief Commander','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/6/e/6e2cf83b-417d-41ca-8e65-86aa65180c40.jpg?1562256577','5UU',7,'Legendary Creature - Human Soldier','U','Portal Three Kingdoms','rare',76.79,'Xu Xiaoming'),
	(1017,'Malefic Scythe','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/8/9/89e2bc57-8f18-4ba1-a11b-9d69d029f56a.jpg?1594736272','1B',2,'Artifact - Equipment','B','Core Set 2021','uncommon',0.08,'Joe Slucher'),
	(1018,'Apostle of Purifying Light','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/6/2/62f69602-b5fd-46d6-8dae-d77df35e378c.jpg?1592515963','1W',2,'Creature - Human Cleric','W','Core Set 2020','uncommon',0.15,'Bastien L. Deharme'),
	(1019,'Spy Eye','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/0/e/0e84a9db-8130-489b-9f76-e3ecd35a0fd8.jpg?1562897984','2UU',4,'Creature - Eye Spy','U','Unstable','uncommon',0.12,'Ben Wootten'),
	(1020,'Galvanoth','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/2/3/23f2e251-1a90-433e-b63a-1a361f5dc6b3.jpg?1592713339','3RR',5,'Creature - Beast','R','Duel Decks: Izzet vs. Golgari','rare',0.25,'Kev Walker'),
	(1021,'Seraph Sanctuary','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/e/1/e1c1fa29-362f-40b4-b67f-513f6592fb3b.jpg?1592762924','',0,'Land','C','Duel Decks: Blessed vs. Cursed','common',1.39,'David Palumbo'),
	(1022,'Laccolith Rig','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/4/f/4fb92039-03fd-4aee-be74-96997be629d6.jpg?1562629852','R',1,'Enchantment - Aura','R','Nemesis','common',0.12,'Massimilano Frezzato'),
	(1023,'Brazen Wolves','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/a/b/ab8e2ece-3c66-4f34-9042-fc02639c6a79.jpg?1576384539','2R',3,'Creature - Wolf','R','Eldritch Moon','common',0.07,'Nils Hamm'),
	(1024,'Jadelight Ranger','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/9/f/9fe5c719-f20d-4469-9750-fb689d5f3fc8.jpg?1555040676','1GG',3,'Creature - Merfolk Scout Ranger','G','Rivals of Ixalan','rare',0.47,'Jason Rainville'),
	(1025,'Merfolk Observer','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/1/6/16fa8c72-320b-4a7e-9181-bad7ec0c865c.jpg?1562701505','1U',2,'Creature - Merfolk Rogue','U','Rise of the Eldrazi','common',0.09,'Anthony Francisco'),
	(1026,'Curse of the Restless Dead','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/c/d/cdde244a-d2f4-44b3-badd-d6142785e25c.jpg?1631659593','2B',3,'Enchantment - Aura Curse','B','Midnight Hunt Commander','rare',1.52,'Brian Valeza'),
	(1027,'Crown of Vigor','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/e/7/e7e320a6-88e2-4be1-97e2-30e0f3c2e450.jpg?1562950225','1G',2,'Enchantment - Aura','G','Onslaught','common',0.11,'Matt Cavotta'),
	(1028,'Arcane Teachings','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/4/1/41764237-fa31-4b27-92ff-712a42d350b9.jpg?1562546788','2R',3,'Enchantment - Aura','R','Tenth Edition','uncommon',0.17,'Dan Dos Santos'),
	(1030,'Simic Cluestone','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/e/3/e3c47552-afed-463d-bd24-13eb1cd724fc.jpg?1562937603','3',3,'Artifact','C','Dragon\'s Maze','common',0.1,'Raoul Vitale'),
	(1031,'Muse Vortex','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/c/1/c11b6560-51e8-42d2-a51d-fca70a5807b5.jpg?1625191332','XUU',2,'Sorcery','U','Commander 2021','rare',0.18,'Kieran Yanner'),
	(1032,'Shu Defender','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/e/e/ee57a9ab-c385-4a51-aff7-6a654f5d7611.jpg?1562258001','2W',3,'Creature - Human Soldier','W','Portal Three Kingdoms','common',7.78,'Sun Nan'),
	(1033,'Commander\'s Sphere','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/1/c/1c1fda5d-f519-4b27-9fc6-1a617d0fc79b.jpg?1625978436','3',3,'Artifact','C','Commander 2021','common',0.19,'Ryan Alexander Lee'),
	(1034,'Infernal Plunge','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/b/3/b3f50e17-c29c-4d2c-b3e7-45d1216b81ea.jpg?1562835822','R',1,'Sorcery','R','Innistrad','common',0.23,'Daarken'),
	(1035,'Argivian Find','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/8/9/89f23295-ad0a-4e2d-ae04-1a9c065e575d.jpg?1562802015','W',1,'Instant','W','Weatherlight','uncommon',1.45,'Roger Raupp'),
	(1036,'Skymarcher Aspirant','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/9/4/9473190f-5e96-4cf7-a0fa-a77d916acc2e.jpg?1555039784','W',1,'Creature - Vampire Soldier','W','Rivals of Ixalan','uncommon',0.17,'Winona Nelson'),
	(1038,'Sea-Dasher Octopus','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/a/6/a6f59d9e-6c1b-437a-934c-7c776c8dd1d5.jpg?1591226485','1UU',3,'Creature - Octopus','U','Ikoria: Lair of Behemoths','rare',0.93,'Chris Seaman'),
	(1039,'Mythos of Vadrok','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/2/b/2bbe99a7-3b58-4f23-bf86-e1e35b0bec2e.jpg?1591227315','2RR',4,'Sorcery','R','Ikoria: Lair of Behemoths','rare',0.11,'Seb McKinnon'),
	(1040,'Mountain Valley','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/9/5/9558892f-c4e8-4849-8c3b-384780cfb183.jpg?1592711602','',0,'Land','C','Commander 2018','uncommon',2.16,'Kari Johnson'),
	(1041,'Cloud Elemental','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/3/6/3639ad50-6e39-48bd-9055-c32369d2f676.jpg?1562260683','2U',3,'Creature - Elemental','U','Modern Masters 2015','common',0.06,'Michael Sutfin'),
	(1042,'Tibalt, Rakish Instigator','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/7/f/7f9a24dc-8bc3-4528-8780-57fb108fdfbf.jpg?1557576823','2R',3,'Legendary Planeswalker - Tibalt','R','War of the Spark','uncommon',0.23,'Chase Stone'),
	(1043,'Sneaky Homunculus','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/a/9/a9020f16-4c26-4a7b-8b5c-1d8df3e910a9.jpg?1562929093','1U',2,'Creature - Homunculus Illusion','U','Eighth Edition','common',0.05,'Scott M. Fischer'),
	(1044,'Crown of the Ages','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/7/7/77b549e5-c25d-4688-b362-faab109ba092.jpg?1562591838','2',2,'Artifact','C','Fifth Edition','rare',0.32,'Roger Raupp'),
	(1045,'Heritage Druid','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/5/7/57948c65-4324-42bc-97ae-7cc700eb3817.jpg?1580014812','G',1,'Creature - Elf Druid','G','Eternal Masters','rare',10.67,'Larry MacDougall'),
	(1047,'Kiora, Master of the Depths','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/4/b/4b63c228-3265-4029-9bc0-36b3e31dfb53.jpg?1562912680','2GU',4,'Legendary Planeswalker - Kiora','GU','Battle for Zendikar','mythic',3.08,'Jason Chan'),
	(1048,'More or Less','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/b/1/b111425a-adaa-4938-88a1-6fdd0bcecc39.jpg?1562932351','U',1,'Instant','U','Unstable','uncommon',0.1,'Chris Seaman'),
	(1049,'Kaza, Roil Chaser','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/a/f/af6bc333-79c0-4de8-9874-80f2254f9ad2.jpg?1604200147','UR',2,'Legendary Creature - Human Wizard','RU','Zendikar Rising','rare',0.14,'Ekaterina Burmak'),
	(1050,'Silumgar Monument','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/3/2/3243e300-1420-4e96-a3d3-610c3723a11f.jpg?1562784471','3',3,'Artifact','C','Dragons of Tarkir','uncommon',0.13,'Daniel Ljunggren'),
	(1051,'Ogre Gatecrasher','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/f/f/ffddd4e2-e98c-4535-bac2-0af73f1535c5.jpg?1593273189','3R',4,'Creature - Ogre Rogue','R','Dissension','common',0.04,'Daren Bader'),
	(1052,'Morgue Theft','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/9/3/937465ca-4cf7-4412-86eb-264efb0fdddd.jpg?1562922327','1B',2,'Sorcery','B','Odyssey','common',0.15,'Justin Sweet'),
	(1053,'Gutter Grime','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/a/9/a9d007a2-163d-4e09-a70b-280a6fa3203b.jpg?1562835224','4G',5,'Enchantment','G','Innistrad','rare',0.32,'Erica Yang'),
	(1054,'Lingering Souls','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/b/c/bcf1288a-8e2c-4a69-afcf-af293f66d007.jpg?1593812843','2W',3,'Sorcery','W','Modern Masters 2017','uncommon',0.33,'John Stanko'),
	(1055,'Clear Shot','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/a/7/a7ff66fc-bd38-4607-b394-8c4e09affec8.jpg?1599707021','2G',3,'Instant','G','Double Masters','common',0.05,'Craig J Spearing'),
	(1056,'Stone Giant','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/f/b/fbd9a10e-2bf7-4af7-bb34-52de01e03523.jpg?1581708530','2RR',4,'Creature - Giant','R','Duel Decks: Venser vs. Koth','uncommon',0.05,'Warren Mahy'),
	(1057,'Chaos Wand','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/6/2/62ff0730-6dd9-42d2-be0d-655d04adf229.jpg?1562302627','3',3,'Artifact','C','Core Set 2019','rare',0.42,'Kari Christensen'),
	(1058,'Surging Sentinels','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/2/6/264d120a-d7e2-4b9e-ac85-c66e976c577b.jpg?1593274838','2W',3,'Creature - Human Soldier','W','Coldsnap','common',0.05,'Christopher Moeller'),
	(1059,'Soulquake','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/4/b/4b3a7470-b93e-4c3a-ab1c-0a4dd401e95a.jpg?1562641103','3UUBB',7,'Sorcery','BU','Alara Reborn','rare',0.34,'Warren Mahy'),
	(1060,'Hedron Crawler','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/9/f/9f827f92-1df6-4fd0-aa61-ec2e53476f9c.jpg?1562927179','2',2,'Artifact Creature - Construct','C','Oath of the Gatewatch','common',0.21,'Daniel Ljunggren'),
	(1061,'Sealed Fate','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/3/6/36cf9da8-f078-4f6e-8077-bb24a7ed487f.jpg?1562718780','XUB',2,'Sorcery','BU','Mirage','uncommon',0.25,'Terese Nielsen'),
	(1062,'Veiled Sentry','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/d/e/de458a9d-6c09-42bb-b470-c2691e95345a.jpg?1562941880','U',1,'Enchantment','U','Urza\'s Saga','uncommon',0.22,'Ron Spears'),
	(1063,'Kitesail Cleric','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/1/6/16626f84-00d3-4ec9-b62c-19fff380cd3a.jpg?1604195997','W',1,'Creature - Kor Cleric','W','Zendikar Rising','uncommon',0.03,'PINDURSKI'),
	(1064,'Liliana of the Veil','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/e/6/e653437e-2e56-4443-aec5-5bb7d8860238.jpg?1547516945','1BB',3,'Legendary Planeswalker - Liliana','B','Ultimate Masters','mythic',78.97,'Steve Argyle'),
	(1065,'Meteor Blast','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/d/e/de18b9ff-9847-4347-a02f-391470332f6e.jpg?1562276083','XRRR',3,'Sorcery','R','Commander Anthology Volume II','uncommon',0.1,'Mike Sass'),
	(1066,'Lust for War','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/9/c/9c8fa150-383d-448c-8e14-f24f65e13770.jpg?1562706764','2R',3,'Enchantment - Aura','R','Rise of the Eldrazi','uncommon',0.11,'Raymond Swanland'),
	(1067,'Wizard Replica','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/e/d/ed9b6a66-2ec4-44e6-b29b-f08768dca9cc.jpg?1562843360','3',3,'Artifact Creature - Wizard','C','Planechase','common',0.18,'Carl Critchlow'),
	(1069,'Ancient Ziggurat','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/0/3/0348247d-0a70-4961-8590-9de41386c69b.jpg?1562799113','',0,'Land','C','Conflux','uncommon',6.28,'John Avon'),
	(1070,'Implement of Examination','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/a/7/a791aa71-00db-422d-a78a-53b121c24db5.jpg?1576382282','3',3,'Artifact','C','Aether Revolt','common',0.03,'Darek Zabrocki'),
	(1071,'Maritime Guard','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/1/0/1008ff1b-7fb0-4570-b23e-9fda14b97640.jpg?1562007493','1U',2,'Creature - Merfolk Soldier','U','Magic Origins','common',0.02,'Allen Williams'),
	(1072,'Wings of Velis Vel','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/c/c/cc5f287b-beaa-4b51-8db7-91982e2c0bb0.jpg?1562267396','1U',2,'Tribal Instant - Shapeshifter','U','Modern Masters 2015','common',0.11,'Jim Pavelec'),
	(1073,'Grisly Transformation','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/4/e/4eb0ce84-560f-4e39-a0ab-7bd710d541cc.jpg?1593092015','2B',3,'Enchantment - Aura','B','Born of the Gods','common',0.05,'Tyler Jacobson'),
	(1074,'Thriving Rats','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/5/2/52ba911b-6a52-4430-8f61-63bdae25c16a.jpg?1576381887','1B',2,'Creature - Rat','B','Kaladesh','common',0.08,'Tom Babbey'),
	(1075,'Elvish Pathcutter','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/c/7/c7d810b8-1a15-46cc-9d9d-871ac43b7036.jpg?1562942208','3G',4,'Creature - Elf Scout','G','Onslaught','common',0.19,'Todd Lockwood'),
	(1076,'Hall of Oracles','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/7/6/7642dddd-4461-46dd-b396-9e0a89f7232e.jpg?1624740927','',0,'Land','C','Strixhaven: School of Mages','rare',0.27,'Piotr Dura'),
	(1077,'Demogorgon\'s Clutches','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/5/8/581e7ac6-65e5-4a16-ab0b-0988c3a3cfea.jpg?1627704588','2B',3,'Sorcery','B','Adventures in the Forgotten Realms','uncommon',0.07,'Alexander Mokhov'),
	(1078,'Collected Company','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/c/f/cfa7b456-7e83-4587-a875-9b35fde318c2.jpg?1582117536','3G',4,'Instant','G','Dragons of Tarkir','rare',15.25,'Franz Vohwinkel'),
	(1079,'Subterranean Hangar','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/e/d/edc199d1-970b-489f-b713-8285151f16ae.jpg?1562383975','',0,'Land','C','Mercadian Masques','uncommon',0.28,'Matt Cavotta'),
	(1080,'Curse of Inertia','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/3/2/32d0c2a7-4277-43eb-bb09-5ca0c27edee4.jpg?1592672512','2U',3,'Enchantment - Aura Curse','U','Commander Anthology','uncommon',0.18,'Jasper Sandner'),
	(1081,'Student of Warfare','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/9/f/9f4df9be-324b-458a-9379-ab4aa437a6d2.jpg?1562706802','W',1,'Creature - Human Knight','W','Rise of the Eldrazi','rare',3.63,'Volkan Ba?a'),
	(1082,'Wasteland Scorpion','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/2/b/2bab1782-498c-40fc-bf2e-5c991d0c3501.jpg?1543675466','2B',3,'Creature - Scorpion','B','Amonkhet','common',0.04,'Yeong-Hao Han'),
	(1083,'Mire Kavu','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/c/c/ccdd0086-eb27-48b3-91cb-a113aa1de102.jpg?1562938287','3R',4,'Creature - Kavu','R','Planeshift','common',0.13,'Wayne England'),
	(1084,'Arcane Signet','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/0/1/01b186af-8825-4257-80fd-9c1ecdb21414.jpg?1625978253','2',2,'Artifact','C','Commander 2021','common',1.19,'Dan Scott'),
	(1085,'Gilt-Leaf Archdruid','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/a/9/a913f9b3-abbd-424b-8dea-061e15364fb0.jpg?1562880598','3GG',5,'Creature - Elf Druid','G','Morningtide','rare',11.65,'Steve Prescott'),
	(1086,'Peregrine Drake','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/f/b/fbe5d85f-bfd3-49e1-a943-ed1ade6bb2a2.jpg?1562945824','4U',5,'Creature - Drake','U','Battlebond','uncommon',3.01,'Mike Bierek'),
	(1087,'Oath of Liliana','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/2/0/2028f577-e0fb-48dd-89c6-f4a000b0a881.jpg?1576384382','2B',3,'Legendary Enchantment','B','Eldritch Moon','rare',0.45,'Wesley Burt'),
	(1088,'Wooden Sphere','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/5/3/5310b3a7-0a85-4469-be88-5c7ab1de4f4a.jpg?1562911886','1',1,'Artifact','C','Eighth Edition','uncommon',0.1,'Donato Giancola'),
	(1089,'Unnatural Selection','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/c/5/c575e2cb-3990-4c73-b81c-e16311ec6bbb.jpg?1562941637','1U',2,'Enchantment','U','Apocalypse','rare',4.77,'Kev Walker'),
	(1090,'Vigean Intuition','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/b/e/be493737-0457-447b-802b-043d7a77f389.jpg?1593273814','3GU',5,'Instant','GU','Dissension','uncommon',0.16,'Alex Horley-Orlandelli'),
	(1091,'Breaker of Armies','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/7/8/784e843e-7010-466d-adbd-1dd1595aead1.jpg?1562923386','8',8,'Creature - Eldrazi','C','Battle for Zendikar','uncommon',0.28,'Richard Wright'),
	(1092,'Malachite Talisman','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/6/3/63fb8a24-ce53-4a69-be2a-55c6dbba5ee7.jpg?1562913507','2',2,'Artifact','C','Ice Age','uncommon',0.13,'Christopher Rush'),
	(1093,'Curiosity Crafter','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/0/4/0452c73b-4522-4808-8f97-0e84e2944ee9.jpg?1625191203','3U',4,'Creature - Bird Wizard','U','Commander 2021','rare',0.59,'Rudy Siswanto'),
	(1094,'Lithoform Engine','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/6/6/6683416a-5820-4cd0-b28a-60a53239e9ef.jpg?1604200767','4',4,'Legendary Artifact','C','Zendikar Rising','mythic',10.62,'Colin Boyer'),
	(1095,'Initiates of the Ebon Hand','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/c/8/c83085df-1ffb-4178-9fc0-fd347196673f.jpg?1587857225','B',1,'Creature - Cleric','B','Fifth Edition','common',0.16,'Heather Hudson'),
	(1096,'Titania\'s Boon','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/b/8/b8d64591-8552-4e94-b932-7a23922513a1.jpg?1562934045','3G',4,'Sorcery','G','Urza\'s Saga','uncommon',0.21,'Val Mayerik'),
	(1097,'Benalish Cavalry','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/a/0/a0fd40fa-4144-41b4-b441-a71d09a11305.jpg?1619392605','1W',2,'Creature - Human Knight','W','Time Spiral Remastered','common',0.02,'Paolo Parente'),
	(1098,'Ulamog, the Ceaseless Hunger','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/1/1/1192f7a9-102e-4b3a-b154-18c8eb332217.jpg?1562899233','10',10,'Legendary Creature - Eldrazi','C','Battle for Zendikar','mythic',45.8,'Michael Komarck'),
	(1099,'Dragon\'s Rage Channeler','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/4/c/4ced112a-e775-4f97-97b3-74877e9dce12.jpg?1626096503','R',1,'Creature - Human Shaman','R','Modern Horizons 2','uncommon',2.66,'Martina Fackova'),
	(1100,'Piety','https://c1.scryfall.com/file/scryfall-cards/art_crop/front/d/4/d4942a9f-6b8f-438b-a2ea-366228038ed8.jpg?1587911080','2W',3,'Instant','W','Fourth Edition','common',0.25,'Mark Poole');

/*!40000 ALTER TABLE `mtgcards` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
