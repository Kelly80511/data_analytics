-- Create a videos table.
-- This table should include a unique ID, the title of the video, the length in minutes, and the URL.
create table videos(
video_id serial primary key,
title varchar,
length_in_minutes varchar,
url varchar);

-- Populate the table with at least three related videos from YouTube or other publicly available resources.
insert into videos(video_id,title,length_in_minutes,url)
values
(1,'Oliver, Stoned (Full Movie) Comedy, Stoner Comedy Films','1:32:06','https://www.youtube.com/watch?v=4BW2pCTIcv4'),
(2,'Good Boys','1:29:39','https://www.youtube.com/watch?v=fzu2yr0m5tU'),
(3,'Why Him?','1:51:12','https://www.youtube.com/watch?v=6xGzUKoKmNs');

-- Create and populate Reviewers table. 
-- Create a second table that provides at least two user reviews for each of at least two of the videos.
create table reviewers(
user_Id serial primary key,
user_name varchar,
rating int not null,
review varchar,
video_id int);

-- These should be imaginary reviews that include columns for the user’s name (“Asher”, “John”, etc.), rating (which could be NULL, or a number between 0 and 5), and a short text review (“Loved it!”). 
-- There should be a column that links back to the ID column in the table of videos.
insert into reviewers(user_id,user_name,rating,review,video_id)
values
(1,'Asher',4,'Loved it!',1),
(2,'John',3,'Great!',2),
(3,'Selina',5,'Amazing!',1),
(4,'Chloe',4,'Interesting!',2);

-- Report on Video Reviews.
-- Write a JOIN statement that shows information from both tables.
select * from videos
inner join reviewers
on videos.video_id = reviewers.video_id;