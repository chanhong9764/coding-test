SELECT CATEGORY, PRICE as MAX_PRICE, PRODUCT_NAME from FOOD_PRODUCT where CATEGORY REGEXP '과자|국|김치|식용유' and PRICE in (SELECT MAX(PRICE) from FOOD_PRODUCT group by CATEGORY) order by MAX_PRICE desc