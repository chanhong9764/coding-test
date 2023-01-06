SELECT CATEGORY, SUM(SALES) as TOTAL_SALES from BOOK JOIN BOOK_SALES USING (BOOK_ID) where YEAR(SALES_DATE) = 2022 and MONTH(SALES_DATE) = 1 group by CATEGORY order by CATEGORY asc