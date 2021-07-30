#To create databse
#create database videoDB;

#Query to create needed table
SELECT t2.*, t1.title,t1.length, t1.URL
FROM reviewer as t2 LEFT JOIN video as t1 ON t2.video_id = t1.video_id;
