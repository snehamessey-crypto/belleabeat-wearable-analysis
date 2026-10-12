CREATE DATABASE IF NOT EXISTS bellabeat_db;

USE bellabeat_db;
CREATE TABLE daily_activity (
id BIGINT NOT NULL,
activity_date VARCHAR(50) NOT NULL,
total_steps INT,
total_distance DECIMAL(6,2),
tracker_distance DECIMAL(6,2),
logged_activities_distance DECIMAL(6,2),
very_active_distance DECIMAL(6,2),
moderately_active_distance DECIMAL(6,2),
light_active_distance DECIMAL(6,2),
sedentary_active_distance DECIMAL(6,2),
very_active_minutes INT,
fairly_active_minutes INT,
lightly_active_minutes INT,
sedentary_minutes INT,
calories INT
);

SELECT * FROM daily_activity;

SET SQL_SAFE_UPDATES = 0;

UPDATE daily_activity
SET activity_date = DATE_FORMAT(
    CASE 
        WHEN activity_date LIKE '%/%/%' THEN STR_TO_DATE(activity_date, '%m/%d/%Y')
        WHEN activity_date LIKE '%-%-%' AND LENGTH(SUBSTRING_INDEX(activity_date, '-', 1)) = 4 
            THEN STR_TO_DATE(activity_date, '%Y-%m-%d')
        WHEN activity_date LIKE '%-%-%' THEN STR_TO_DATE(activity_date, '%d-%m-%Y')
        ELSE NULL
    END,
    '%Y-%m-%d'
)
WHERE activity_date IS NOT NULL;

ALTER TABLE daily_activity
MODIFY COLUMN activity_date DATE NOT NULL;

ALTER TABLE daily_activity
MODIFY COLUMN id BIGINT NOT NULL;

ALTER TABLE daily_activity
ADD PRIMARY KEY (id, activity_date);

DESCRIBE daily_activity;

USE bellabeat_db;
CREATE TABLE sleep_day (
id BIGINT NOT NULL,
sleep_date VARCHAR(50),
total_sleep_records INT,
total_minutes_asleep INT,
total_time_in_bed INT
);

SELECT * FROM sleep_day;

-- Q1. How consistently do users actually wear and log their devices?
SELECT id,
COUNT(activity_date) AS total_logged_days
FROM daily_activity
GROUP BY id
ORDER BY total_logged_days DESC;

-- Q2. What are the daily baseline health averages for our users?
SELECT 
ROUND(AVG(total_steps), 0) AS avg_steps,
ROUND(AVG(calories), 0) AS avg_calories,
ROUND(AVG(sedentary_minutes), 0) AS avg_sedentary_mins
FROM daily_activity;

-- Q3. How can we group users into activity segments?
SELECT id,
ROUND(AVG(total_steps), 0) AS avg_steps,
CASE 
WHEN AVG(total_steps) >= 10000 THEN 'Highly Active'
WHEN AVG(total_steps) >= 7500 THEN 'Moderately Active'
WHEN AVG(total_steps) >= 5000 THEN 'Lightly Active'
ELSE 'Sedentary'
END AS activity_tier
FROM daily_activity
GROUP BY id;

-- Q5. On which days of the week are users most inactive?
SELECT 
DAYNAME(activity_date) AS day_of_week,
ROUND(AVG(total_steps), 0) AS avg_steps,
ROUND(AVG(sedentary_minutes), 0) AS avg_sedentary_mins
FROM daily_activity
GROUP BY DAYNAME(activity_date)
ORDER BY avg_steps DESC;

-- Q5. How much sleep are users actually getting versus time spent in bed?
SELECT id,
ROUND(AVG(total_minutes_asleep), 0) AS avg_sleep_mins,
ROUND(AVG(total_time_in_bed - total_minutes_asleep), 0) AS avg_restless_mins
FROM Sleep_day
GROUP BY id; 
