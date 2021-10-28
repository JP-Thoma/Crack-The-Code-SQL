SELECT * 
FROM Madrid_Airbnb_V2 


-- CASE WHEN --

--single WHEN THEN
SELECT name,CASE
	WHEN minimum_nights = 1 THEN "yes"
END AS SingleNight
FROM Madrid_Airbnb_V2;

SELECT name,CASE
	WHEN minimum_nights = 1 THEN "yes"
    ELSE "no"
END AS SingleNight
FROM Madrid_Airbnb_V2;


--multiple WHEN THEN
SELECT name,price,CASE
	WHEN number_of_reviews > 5 Then "high"
    When number_of_reviews < 5 THEN "low"
    ELSE "medium"
   	END AS ReviewRate
FROM Madrid_Airbnb_V2
WHERE price > 100
ORDER BY price DESC;


-- multiple conditional statements with AND/OR
SELECT name,neighbourhood,
       CASE WHEN neighbourhood_group = 'Centro' AND availability_365 = 365  THEN 1
            ELSE 0 
       END AS Center_FullYear
FROM Madrid_Airbnb_V2
WHERE number_of_reviews > 1
ORDER BY Center_FullYear DESC



-- AGGREGATION AND GROUP BY --
SELECT SUM(price) AS Total
FROM Madrid_Airbnb_V2;

SELECT COUNT(id_airbnb)
FROM Madrid_Airbnb_V2;

SELECT MIN(number_of_reviews),MAX(number_of_reviews)
FROM Madrid_Airbnb_V2;

SELECT ROUND(AVG(availability_365),0) AS AVG_Availability
FROM Madrid_Airbnb_V2;

SELECT neighbourhood_group,AVG(minimum_nights)
FROM Madrid_Airbnb_V2
GROUP BY neighbourhood_group;
-- ALWAYS add column specified in GROUP BY to SELECT statement


--Sum of reviews per neighbourhood for the centre
SELECT neighbourhood, ROUND(SUM(number_of_reviews),0) AS Total_Reviews
FROM Madrid_Airbnb_V2
WHERE neighbourhood_group = "Centro"
GROUP BY neighbourhood;