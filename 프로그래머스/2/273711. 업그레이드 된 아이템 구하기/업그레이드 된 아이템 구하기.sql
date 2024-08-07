-- 코드를 작성해주세요
SELECT B.ITEM_ID, B.ITEM_NAME, B.RARITY
FROM ITEM_TREE as A
JOIN ITEM_INFO as B
ON A.ITEM_ID = B.ITEM_ID
WHERE PARENT_ITEM_ID IN (
    SELECT DISTINCT(ITEM_ID)
    FROM ITEM_INFO
    WHERE RARITY = 'RARE'
)
ORDER BY B.ITEM_ID DESC