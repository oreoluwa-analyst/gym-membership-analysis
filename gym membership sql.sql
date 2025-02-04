-- Step 1: Rename columns for clarity
EXEC sp_rename 'gym_membership.abonoment_type', 'membership_type', 'COLUMN';
EXEC sp_rename 'gym_membership.visit_per_week', 'visits_per_week', 'COLUMN';

-- Step 2: Convert data types
ALTER TABLE gym_membership 
ALTER COLUMN birthday DATE;

ALTER TABLE gym_membership 
ALTER COLUMN avg_time_check_in TIME;

ALTER TABLE gym_membership 
ALTER COLUMN avg_time_check_out TIME;

-- Step 3: Handle missing values
UPDATE gym_membership SET fav_group_lesson = NULL WHERE fav_group_lesson = '';
UPDATE gym_membership SET fav_drink = NULL WHERE fav_drink = '';
UPDATE gym_membership SET name_personal_trainer = NULL WHERE name_personal_trainer = '';


-- Step 4: Trim unnecessary spaces
UPDATE gym_membership 
SET fav_group_lesson = LTRIM(RTRIM(fav_group_lesson)), 
    fav_drink = LTRIM(RTRIM(fav_drink)), 
    name_personal_trainer = LTRIM(RTRIM(name_personal_trainer));

	-- Step 5: Standardize text format
IF COL_LENGTH('gym_membership', 'membership_type') IS NOT NULL
    UPDATE gym_membership 
    SET membership_type = UPPER(membership_type);

	--1 membership type with the highest engagement
	SELECT membership_type, AVG(visits_per_week) AS avg_visits
    FROM gym_membership
    GROUP BY membership_type
    ORDER BY avg_visits DESC;

	--2 most popular days
	SELECT value AS day_of_week, COUNT(*) AS visit_count
    FROM gym_membership
    CROSS APPLY STRING_SPLIT(days_per_week, ',')
    GROUP BY value
    ORDER BY visit_count DESC;

	--3 popular time for gym visit
SELECT DATEPART(HOUR, avg_time_check_in) AS check_in_hour, COUNT(*) AS visit_count
FROM gym_membership
GROUP BY DATEPART(HOUR, avg_time_check_in)
ORDER BY visit_count DESC;


---4 group lessons with thehighest and lowest attendance
SELECT fav_group_lesson, COUNT(*) AS attendance_count
FROM gym_membership
WHERE fav_group_lesson IS NOT NULL
GROUP BY fav_group_lesson
ORDER BY attendance_count DESC;

---5 personal trainers with highest client retention
SELECT name_personal_trainer, COUNT(*) AS client_count
FROM gym_membership
WHERE personal_training = 1 AND name_personal_trainer IS NOT NULL
GROUP BY name_personal_trainer
ORDER BY client_count DESC;

--6 impact of personal training on engagement
SELECT personal_training, AVG(visits_per_week) AS avg_visits
FROM gym_membership
GROUP BY personal_training;



