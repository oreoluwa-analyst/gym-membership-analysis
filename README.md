# gym-membership-analysis
raw file,sql file,powerbi file are available to download
**1. Project Overview**
**Title**: Gym Membership Analysis – Optimizing Member Engagement and Trainer Performance

**Objective**: This project aims to analyze gym membership trends, member engagement, attendance patterns, and trainer performance 
Data set Description: The data set consists of gym membership records, attendance logs, personal training sessions, and trainer-client interactions.

**CASE STUDY**
1.Identify which membership type (Standard or Premium) engages more frequently.
2.Determine which personal trainers have the highest client retention.
3.Analyze participation in personal training sessions.
4.Identify the most popular gym attendance days to optimize staffing.
5.Determine which group fitness classes have the highest attendance to adjust scheduling.

**2.Data Understanding & Preparation**

I had to go through the data to understand the tables, columns and relationships and the most important columns and how they can be used to solve the problems intended, and to prepare the data I had to make sure it was clean before I started and discorvered that

1.Membership Data: Includes member details, membership types, and activity logs. Contains membership types (Standard, Premium) and engagement details.
2.Attendance Data: Tracks daily gym visits.
3.Trainer Data: Contains trainer-client relationships and personal training sessions.
4.Group Lesson Data: Logs attendance for different fitness classes
**DATA CLEANING PROCESS**
1.I renamed a column for clarity, Abonoment type was renamed to gym membership
2.I converted the following data types(birthday,average time check-in and average time check out) to date and time respectively
3.I trimmed the unnecessarily spaces
4.I standardized the text format by making gym membership all upper case 

**3. SQL Queries & Analysis**
1. Identifying Membership Type Engagement
This query determined that Premium members has the same average visit with Standard members.
2.Analyzing Most Popular Gym Days:  Friday ,wednessday  and Tuesday were identified as peak gym attendance days, aiding in optimizing staff scheduling.
3.Determining the Most Attended Group Lessons: Body Pump and Yoga were the most attended classes, guiding decisions on expanding class schedules.
4. Identifying the Personal Trainer with the Highest Client Retention: It was found that Chantal had the highest client retention, helping to refine trainer performance strategies.

**4. Power BI Visualization & Insights**
Dashboard Components:
Filters: Membership Type, Personal Training, Gender
1.Avg Engagement by Membership Type: Standard vs. Premium comparison.(stacked bar chart)
2.Personal Trainer with Highest Client Retention: Top trainers ranked by retained clients.(table)
3.Personal Training Engagement: a donut chart showing distribution of members enrolled in personal training.
4.Group Lesson Attendance: A stacked Bar chart displaying the most attended classes.
5.Most Popular Gym Days: A coloumn chart showing gym visit frequency by day of the week.

**Key Insights Derived:**
1.Chantal is the top personal trainer with the highest client retention (482 clients).
2.Body Pump and Hot Yoga are the most popular group fitness classes.
3.Sunday wednessday and Tuesday see the highest gym attendance.

**5. Conclusion & Recommendations**
1.Popular gym classes should be scheduled during peak days to increase engagement
2;Trainers like Chantal and Mike could be leveraged for mentoring new trainers.
3.Increase availability of high-demand classes (Body Pump, Hot Yoga).
4.Optimize trainer schedules based on client retention performance.
5.Implement targeted promotions on less busy gym days to balance attendance.




