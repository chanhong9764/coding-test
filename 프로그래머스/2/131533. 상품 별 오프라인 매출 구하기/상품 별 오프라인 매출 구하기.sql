-- 코드를 입력하세요
SELECT A.PRODUCT_CODE, (A.PRICE * SUM(B.SALES_AMOUNT)) as SALES
from PRODUCT as A
JOIN OFFLINE_SALE as B
on A.PRODUCT_ID = B.PRODUCT_ID
group by B.PRODUCT_ID
order by SALES DESC, A.PRODUCT_CODE;