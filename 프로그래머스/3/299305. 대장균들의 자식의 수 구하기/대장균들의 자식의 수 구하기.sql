-- 코드를 작성해주세요

SELECT A.ID, IFNULL(B.CHILD_COUNT, 0) as CHILD_COUNT
FROM ECOLI_DATA as A
LEFT JOIN (
    SELECT PARENT_ID, COUNT(*) as CHILD_COUNT
    FROM ECOLI_DATA
    GROUP BY PARENT_ID
) as B
ON A.ID = B.PARENT_ID
ORDER BY A.ID ASC