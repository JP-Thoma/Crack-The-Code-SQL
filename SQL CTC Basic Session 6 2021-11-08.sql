select * from Madrid_Airbnb_V3;
select count(*) from Madrid_Airbnb_V3; 

select * from Madrid_Airbnb_Ratings_Information;
select count(*) from Madrid_Airbnb_Ratings_Information; 


select  A.id_airbnb
       ,A.neighbourhood_group
       ,A.price
       ,B.last_review
       ,B.number_of_reviews
from Madrid_Airbnb_V3 A
INNER JOIN Madrid_Airbnb_Ratings_Information B
ON A.id_airbnb=B.id_airbnb;

select count(*) from Madrid_Airbnb_V3 A
INNER JOIN Madrid_Airbnb_Ratings_Information B
ON A.id_airbnb=B.id_airbnb;


select  A.id_airbnb
       ,A.host_name
       ,A.neighbourhood_group
       ,B.number_of_reviews
       ,B.last_review
FROM Madrid_Airbnb_V3 A
FULL OUTER JOIN Madrid_Airbnb_Ratings_Information B
ON A.id_airbnb = B.id_airbnb;

select  A.id_airbnb
       ,A.host_name
       ,A.neighbourhood_group 
       ,B.number_of_reviews
       ,B.last_review
FROM Madrid_Airbnb_Ratings_Information B
LEFT JOIN Madrid_Airbnb_V3 A
ON A.id_airbnb = B.id_airbnb
WHERE A.neighbourhood_group like '%Cham'

select  A.id_airbnb
       ,A.host_name
       ,A.neighbourhood_group
       ,B.number_of_reviews
       ,B.last_review
FROM Madrid_Airbnb_V3 A
RIGHT JOIN Madrid_Airbnb_Ratings_Information B
ON A.id_airbnb = B.id_airbnb;






