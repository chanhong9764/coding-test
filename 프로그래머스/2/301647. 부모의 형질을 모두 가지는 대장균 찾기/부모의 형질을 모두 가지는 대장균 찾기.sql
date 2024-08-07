-- 코드를 작성해주세요
SELECT a.ID, a.GENOTYPE, b.GENOTYPE AS PARENT_GENOTYPE
FROM ECOLI_DATA AS a
JOIN ECOLI_DATA AS b
on a.PARENT_ID = b.ID
WHERE a.GENOTYPE & b.GENOTYPE = b.GENOTYPE
ORDER BY ID ASC