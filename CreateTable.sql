DROP TABLE IF EXISTS reviewer;
DROP TABLE IF EXISTS video;

CREATE TABLE reviewer (
  video_id varchar(15),
  user_name varchar(30) NOT NULL,
  rating integer,
  review varchar(20)
  );
  
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/reviewed.csv' 
INTO TABLE reviewer 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE video (
  video_id varchar(15) PRIMARY KEY,
  title varchar(100) NOT NULL,
  length double precision,
  URL varchar(45)
  
  );
 
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/video.csv' 
INTO TABLE video
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

