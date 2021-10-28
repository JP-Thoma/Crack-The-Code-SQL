
SELECT * FROM turnover;

SELECT salary, 
       TRANSLATE(salary,'ow','ei')
FROM turnover;

SELECT salary,
       number_project,
	   CONCAT (salary,number_project)
FROM turnover;

SELECT salary,
       number_project,
	   CONCAT (salary,' ',number_project)
FROM turnover;

SELECT * FROM Madrid_Airbnb_V2;

SELECT price, 
       COALESCE(price,0)
FROM Madrid_Airbnb_V2;

select name,
       price
from Madrid_Airbnb_V2
where price is null;