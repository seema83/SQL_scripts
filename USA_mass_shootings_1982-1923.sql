
-- In this project I analyzed the data.world datset on USA mass shootings from 1982-2023

-- The Columns include
/*
shooting_cases text 
city text 
state text 
date_shooting datetime 
year_shooting int 
shooter_name text 
gender text 
race_shooter text 
fatalities int 
injured int 
total_victims int 
location text 
age_of_shooter int 
mental_health_issues text 
weapons_legal text 
type_shooting text */
-- I used DISTINCT, WHERE CLAUSE, AGGREGATE FUNCTIONS, 


-- Show the tables of the chosen database.
SHOW FULL TABLES;

-- Select all columns of the table mass_shootings
SELECT * FROM mass_shootings;

SELECT DISTINCT city FROM mass_shootings;
SELECT COUNT(DISTINCT city) FROM mass_shootings;
#126

SELECT DISTINCT state FROM mass_shootings;
SELECT COUNT(DISTINCT state) FROM mass_shootings;
#39

--SELECT COUNT(DISTINCT year) FROM mass_shootings;
#
	
 SELECT * FROM mass_shootings; 
 SELECT COUNT(gender) FROM mass_shootings WHERE gender = 'M';
 #135
 SELECT COUNT(gender) FROM mass_shootings WHERE gender = 'F';
#4
  
SELECT * FROM mass_shootings; 
SELECT COUNT(race_shooter) FROM mass_shootings WHERE race_shooter = 'ASIAN';
#10
SELECT COUNT(race_shooter) FROM mass_shootings WHERE race_shooter = 'BLACK';
#26
SELECT COUNT(race_shooter) FROM mass_shootings WHERE race_shooter = 'WHITE';
#71
SELECT COUNT(race_shooter) FROM mass_shootings WHERE race_shooter = 'LATINO';
#11
SELECT COUNT(race_shooter) FROM mass_shootings WHERE race_shooter = 'NATIVE AMERICAN';
#3

SELECT * FROM mass_shootings; 
SELECT MAX(fatalities) FROM mass_shootings;
#58

SELECT shooting_cases, fatalities FROM mass_shootings WHERE fatalities > 20;
#
'Robb Elementary school massacre', '21'
'El Paso Walmart mass shooting', '22'
'Texas First Baptist Church massacre', '26'
'Las Vegas Strip massacre', '58'
'Orlando nightclub massacre', '49'
'Sandy Hook Elementary massacre', '27'
'Virginia Tech massacre', '32'
'Luby\'s massacre', '24'
'San Ysidro McDonald\'s massacre', '22'
SELECT SUM(fatalities) FROM mass_shootings;
#1101
SELECT SUM(injured) FROM mass_shootings;
#1590
SELECT SUM(total_victims) FROM mass_shootings;
#2676

SELECT MIN(fatalities) FROM mass_shootings;
#3

SELECT state, fatalities FROM mass_shootings WHERE fatalities > 20;
#
' Texas', '21'
' Texas', '22'
' Texas', '26'
' Nevada', '58'
' Florida', '49'
' Connecticut', '27'
' Virginia', '32'
' Texas', '24'
' California', '22'


SELECT shooting_cases, fatalities FROM mass_shootings WHERE fatalities > 20;
SELECT shooting_cases, fatalities FROM mass_shootings WHERE fatalities > 20;
SELECT shooting_cases, fatalities FROM mass_shootings WHERE fatalities > 20;

SELECT shooting_cases, fatalities, year_shooting FROM mass_shootings WHERE year_shooting  = 2023;
'Nashville religious school shooting', '6', '2023'
'Michigan State University shooting', '3', '2023'
'Half Moon Bay spree shooting', '7', '2023'
'LA dance studio mass shooting', '11', '2023'
SELECT COUNT(year_shooting) FROM mass_shootings WHERE year_shooting  = 2023;
#4

SELECT shooting_cases, fatalities, year_shooting FROM mass_shootings WHERE year_shooting  = 2022;
#
'Virginia Walmart shooting', '6', '2022'
'LGBTQ club shooting', '5', '2022'
'University of Virginia shooting', '3', '2022'
'Raleigh spree shooting', '5', '2022'
'Greenwood Park Mall shooting', '3', '2022'
'Highland Park July 4 parade shooting', '7', '2022'
'Church potluck dinner shooting', '3', '2022'
'Concrete company shooting', '3', '2022'
'Tulsa medical center shooting', '4', '2022'
'Robb Elementary school massacre', '21', '2022'
'Buffalo supermarket massacre', '10', '2022'
'Sacramento County church shooting', '4', '2022'


SELECT COUNT(year_shooting) FROM mass_shootings WHERE year_shooting  = 2022;
#12

SELECT shooting_cases, fatalities, year_shooting FROM mass_shootings WHERE year_shooting  = 2021;
#
'Oxford High school shooting', '4', '2021'
'San Jose VTA shooting', '9', '2021'
'FedEx warehouse shooting', '8', '2021'
'Orange office complex shooting', '4', '2021'
'Boulder supermarket shooting', '10', '2021'
'Atlanta massage parlor shootings', '8', '2021'

SELECT COUNT(year_shooting) FROM mass_shootings WHERE year_shooting  = 2021;
#6

SELECT shooting_cases, fatalities, year_shooting FROM mass_shootings WHERE year_shooting  = 2020;
#
'Springfield convenience store shooting', '4', '2020'
'Molson Coors shooting', '5', '2020'

SELECT COUNT(year_shooting) FROM mass_shootings WHERE year_shooting  = 2020;
#2


SELECT shooting_cases, fatalities, year_shooting FROM mass_shootings WHERE year_shooting  = 2019;
#
'Jersey City kosher market shooting', '4', '2019'
'Pensacola Naval base shooting', '3', '2019'
'OdessaNULLMidland shooting spree', '7', '2019'
'Dayton entertainment district shooting', '9', '2019'
'El Paso Walmart mass shooting', '22', '2019'
'Gilroy garlic festival shooting', '3', '2019'
'Virginia Beach municipal building shooting', '12', '2019'
'Harry Pratt Co. warehouse shooting', '5', '2019'
'Pennsylvania hotel bar shooting', '3', '2019'
'SunTrust bank shooting', '5', '2019'

SELECT COUNT(year_shooting) FROM mass_shootings WHERE year_shooting  = 2019;
#10

SELECT shooting_cases, fatalities, year_shooting FROM mass_shootings WHERE year_shooting  = 2018;
#
'Mercy Hospital shooting', '3', '2018'
'Thousand Oaks nightclub shooting', '12', '2018'
'Tree of Life synagogue shooting', '11', '2018'
'Rite Aid warehouse shooting', '3', '2018'
'T&T Trucking shooting', '5', '2018'
'Fifth Third Center shooting', '3', '2018'
'Capital Gazette shooting', '5', '2018'
'Santa Fe High school shooting', '10', '2018'
'Waffle House shooting', '4', '2018'
'Yountville veterans home shooting', '3', '2018'
'Marjory Stoneman Douglas High school shooting', '17', '2018'
'Pennsylvania carwash shooting', '4', '2018'

SELECT COUNT(year_shooting) FROM mass_shootings WHERE year_shooting  = 2018;
#12

SELECT shooting_cases, fatalities, year_shooting FROM mass_shootings WHERE year_shooting  = 2017;
#
'Rancho Tehama shooting spree', '5', '2017'
'Texas First Baptist Church massacre', '26', '2017'
'Walmart shooting in suburban Denver', '3', '2017'
'Edgewood businees park shooting', '3', '2017'
'Las Vegas Strip massacre', '58', '2017'
'San Francisco UPS shooting', '3', '2017'
'Pennsylvania supermarket shooting', '3', '2017'
'Florida awning manufacturer shooting', '5', '2017'
'Rural Ohio nursing home shooting', '3', '2017'
'Fresno downtown shooting', '3', '2017'
'Fort Lauderdale airport shooting', '5', '2017'


SELECT COUNT(year_shooting) FROM mass_shootings WHERE year_shooting  = 2017;
#11

SELECT COUNT(location) FROM mass_shootings;
#137
SELECT COUNT(location) FROM mass_shootings  WHERE location = 'workplace';
#50
SELECT COUNT(location) FROM mass_shootings  WHERE location = 'school';
#22
SELECT COUNT(location) FROM mass_shootings  WHERE location = 'religious';
#8
SELECT COUNT(location) FROM mass_shootings  WHERE location = 'military';
#6
SELECT COUNT(location) FROM mass_shootings  WHERE location = 'airport';
#1
SELECT race_shooter, gender FROM mass_shootings  WHERE gender = 'F';
#
NULL, 'F'
'Black', 'F'
'Native American', 'F'
'White', 'F'



SELECT MAX(age_of_shooter) FROM mass_shootings;
#72
SELECT MIN(age_of_shooter) FROM mass_shootings;
#1
SELECT shooter_name, race_shooter, age_of_shooter, location FROM mass_shootings WHERE gender = 'F';
'Audrey Hale', NULL, '28', 'school'
'Snochia Moseley', 'Black', '26', 'workplace'
'Cherie Lash Rhoades', 'Native American', '44', 'other'
'Jennifer Sanmarco', 'White', '44', 'workplace'
SELECT state, race_shooter, age_of_shooter, location FROM mass_shootings WHERE race_shooter = 'White' AND location = 'religious';
' Alabama', 'White', '70', 'religious'
' Pennsylvania', 'White', '46', 'religious'
' Texas', 'White', '26', 'religious'
' South Carolina', 'White', '21', 'religious'
' Wisconsin', 'White', '40', 'religious'
' Wisconsin', 'White', '44', 'religious'
' Texas', 'White', '47', 'religious'
SELECT COUNT(race_shooter) FROM mass_shootings WHERE race_shooter = 'White' AND location = 'religious';
#7
SELECT state, age_of_shooter, location FROM mass_shootings WHERE location = 'school';


SELECT COUNT(mental_health_issues) FROM mass_shootings WHERE mental_health_issues = 'yes'; 
#66
SELECT COUNT(weapons_legal) FROM mass_shootings WHERE weapons_legal = 'yes'; 
#90
SELECT COUNT(type_shooting) FROM mass_shootings WHERE type_shooting = 'Mass'; 
#120
SELECT COUNT(type_shooting) FROM mass_shootings WHERE type_shooting = 'Spree'; 
#21


SELECT fatalities, COUNT(total_victims) AS victims FROM mass_shootings GROUP BY fatalities  ORDER BY COUNT(total_victims) DESC;


select * from mass_shootings  where race_shooter is null;
#select coalesce(race_shooter,0) from mass_shootings  where race_shooter is null;

#find rows where age_of_shooter is (18, 21,45);
select shooting_cases, city, age_of_shooter  from mass_shootings where age_of_shooter in (21, 18, 45);

#get 5 rows
select *  from mass_shootings limit 5;

#randomly get 5 rows.
select city, state  from mass_shootings order by rand() limit 5;

#case..when use
select shooting_cases,fatalities,
       case when fatalities <= 10 then 'intermediate'
             when fatalities >= 10 then 'severe'
            else 'OK'
        end as severity
   from mass_shootings;
   
select concat(shooter_name, ' killed ' ,  fatalities) as msg  from mass_shootings  where gender='M';


select COUNT(shooter_name) from mass_shootings  where gender='M';
#134

select COUNT(shooter_name) from mass_shootings  where gender='F';
#4


SELECT * FROM mass_shootings; 
--------------
show full processlist;
'5', 'event_scheduler', 'localhost', NULL, 'Daemon', '1295943', 'Waiting on empty queue', NULL
'20', 'root', 'localhost:59160', 'random', 'Sleep', '499', '', NULL
'21', 'root', 'localhost:59161', 'random', 'Query', '0', 'init', 'show full processlist'

==========Extra/to figure out===========
 SELECT COUNT(gender) FROM mass_shootings WHERE gender = 'F';
SELECT FirstName, LastName FROM Ffamily;
SELECT PersonID, City FROM family;
SELECT * FROM family LIMIT 2;
SELECT MIN(PersonID) AS ID FROM Family;
SELECT * FROM kids WHERE KidNo = 1;
SELECT * FROM kids WHERE City = 'RMV'

/*'GROUP BY fatalities
ORDER BY fatalities DESC;

SELECT fatalities, state FROM mass_shootings
GROUP BY state;

SELECT * INTO mass_shootings_data FROM mass_shootings;
SELECT * FROM mass_shootings_data;
*/
