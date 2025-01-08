create database Ramayana;
use Ramayana;
create table RamayanaCharacters_1(id int,name varchar(40),Role varchar(50),Kingdom
 varchar(50),Age int,Weapon varchar(40),Strength int,Allies varchar(40),Enemies varchar(50),
 Status varchar(50),Location varchar(50));
 
desc RamayanaCharacters_1;

INSERT INTO RamayanaCharacters_1
VALUES (1, "Rama", "Hero", "Ayodhya", 25, "Bow&Arrow", 95, "Lakshmana Hanuman", "Ravana,Surpanakha", "Alive", "Forest");
INSERT INTO RamayanaCharacters_1
VALUES (2, "Sita", "Herone", "janakpur", 24, "none", 70, "Rama,Lakshmana", "Ravana", "kidnapped", "Ashoka Vatika");
INSERT INTO RamayanaCharacters_1
VALUES (3, "Ravana", "villain", "Lanka", 50, "sword", 100, "Kumbhakarna", "Rama,hanuman", "Deceased", "lanka");
INSERT INTO RamayanaCharacters_1
VALUES (4, "Lakshmana", "sidekic k", "Ayodhya", 24, "Sword", 85, "Rama,Lakshmana", "Ravana", "Alive", "Forest");
INSERT INTO RamayanaCharacters_1
VALUES (5, "Hanuman", "Devote", "kishkindh", 30, "Mace", 100, "Rama,Lakshmana", "Ravana", "Alive", "Forest");
INSERT INTO RamayanaCharacters_1
VALUES (6, "Bharata", "Hero", "Ayodhya", 23, "none", 75, "shatrughna", "Ravana", "Alive", "Lanka");
INSERT INTO RamayanaCharacters_1
VALUES (7, "Shantrughna", "Hero", "Ayodhya", 22, "sword", 80, "Bharata,Lakshmana", "Ravana", "Alive", "Ayodhya");
INSERT INTO RamayanaCharacters_1
VALUES (8, "vibhishana", "Ally", "Lanka", 40, "Sword", 85, "Rama", "Ravana", "Alive", "Lanka");
INSERT INTO RamayanaCharacters_1
VALUES (9, "surpanakha", "villain", "lanka", 35, "none", 60, "Ravana", "Rama,lakshmana", "Deceased", "lanka");
INSERT INTO RamayanaCharacters_1
VALUES (10, "jatayu", "Ally", "unknown", 60, "claws", 90, "Rama,Lakshmana", "Ravana", "Deceased", "Forest");

Select*from RamayanaCharacters_1;
desc ramayanacharacters_1;
select name,status from RamayanaCharacters_1 where status="Alive";
update RamayanaCharacters_1 set strength=110 where name="Hanuman";
Alter table RamayanaCharacters_1 add column power_level varchar(20);
select strength,name,allies from ramayanacharacters_1 having strength>80;
select name from RamayanaCharacters_1 where name in (select substring_index2(allies,',') from RamayanaCharacters_1);
select kingdom,count(*) from ramayanaCharacters_1 group by kingdom;
select  name from ramayanacharacters_1 where role in ('Hero','Villain');
update ramayanacharacters_1 set location='Ayodhya'where name in ('Rama','sita');
alter table ramayanacharacters_1 modify column location varchar(100); 
select age allies,name from ramayanacharacters_1 having age<40;
select status,count(name) from ramayanacharacters_1 group by status;

