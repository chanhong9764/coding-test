SELECT FLAVOR from FIRST_HALF as f JOIN (SELECT SHIPMENT_ID, sum(TOTAL_ORDER) as TOTAL_ORDER from JULY group by FLAVOR) as j USING (SHIPMENT_ID) order by f.TOTAL_ORDER + j.TOTAL_ORDER desc limit 3