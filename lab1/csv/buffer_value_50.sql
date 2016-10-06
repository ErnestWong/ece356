SET bulk_insert_buffer_size = 52428800;
tee 50mb.txt;
DELETE FROM TeamsHalf;
LOAD DATA LOCAL INFILE 'TeamsHalf.csv'
INTO TABLE TeamsHalf
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ; 


DELETE FROM ManagersHalf;
LOAD DATA LOCAL INFILE 'ManagersHalf.csv'
INTO TABLE ManagersHalf
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ; 


DELETE FROM Appearances;
LOAD DATA LOCAL INFILE 'Appearances.csv'
INTO TABLE Appearances
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ; 


DELETE FROM Managers;
LOAD DATA LOCAL INFILE 'Managers.csv'
INTO TABLE Managers
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ; 


DELETE FROM Salaries;
LOAD DATA LOCAL INFILE 'Salaries.csv'
INTO TABLE Salaries
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ; 


DELETE FROM Batting;
LOAD DATA LOCAL INFILE 'Batting.csv'
INTO TABLE Batting
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ; 


DELETE FROM TeamsFranchises;
LOAD DATA LOCAL INFILE 'TeamsFranchises.csv'
INTO TABLE TeamsFranchises
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ; 


DELETE FROM BattingPost;
LOAD DATA LOCAL INFILE 'BattingPost.csv'
INTO TABLE BattingPost
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ; 


DELETE FROM AwardsManagers;
LOAD DATA LOCAL INFILE 'AwardsManagers.csv'
INTO TABLE AwardsManagers
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ; 


DELETE FROM Fielding;
LOAD DATA LOCAL INFILE 'Fielding.csv'
INTO TABLE Fielding
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ; 


DELETE FROM CollegePlaying;
LOAD DATA LOCAL INFILE 'CollegePlaying.csv'
INTO TABLE CollegePlaying
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ; 


DELETE FROM Schools;
LOAD DATA LOCAL INFILE 'Schools.csv'
INTO TABLE Schools
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ; 


DELETE FROM AwardsSharePlayers;
LOAD DATA LOCAL INFILE 'AwardsSharePlayers.csv'
INTO TABLE AwardsSharePlayers
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ; 


DELETE FROM AwardsPlayers;
LOAD DATA LOCAL INFILE 'AwardsPlayers.csv'
INTO TABLE AwardsPlayers
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ; 


DELETE FROM FieldingPost;
LOAD DATA LOCAL INFILE 'FieldingPost.csv'
INTO TABLE FieldingPost
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ; 


DELETE FROM SeriesPost;
LOAD DATA LOCAL INFILE 'SeriesPost.csv'
INTO TABLE SeriesPost
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ; 


DELETE FROM AllstarFull;
LOAD DATA LOCAL INFILE 'AllstarFull.csv'
INTO TABLE AllstarFull
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ; 


DELETE FROM Master;
LOAD DATA LOCAL INFILE 'Master.csv'
INTO TABLE Master
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ; 


DELETE FROM Pitching;
LOAD DATA LOCAL INFILE 'Pitching.csv'
INTO TABLE Pitching
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ; 


DELETE FROM HallOfFame;
LOAD DATA LOCAL INFILE 'HallOfFame.csv'
INTO TABLE HallOfFame
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ; 


DELETE FROM Teams;
LOAD DATA LOCAL INFILE 'Teams.csv'
INTO TABLE Teams
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ; 


DELETE FROM FieldingOF;
LOAD DATA LOCAL INFILE 'FieldingOF.csv'
INTO TABLE FieldingOF
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ; 


DELETE FROM AwardsShareManagers;
LOAD DATA LOCAL INFILE 'AwardsShareManagers.csv'
INTO TABLE AwardsShareManagers
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ; 


DELETE FROM PitchingPost;
LOAD DATA LOCAL INFILE 'PitchingPost.csv'
INTO TABLE PitchingPost
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ; 


