WITH tv_type_subq AS (SELECT brand, size,selling_price, oringinal_price,
       CAST (size AS DOUBLE) AS size_int,
       CAST (selling_price AS DOUBLE) AS selling_price_int,
       CAST (oringinal_price AS DOUBLE) AS original_price_int
FROM tv_type),

sum_sell_subq AS (SELECT brand, SUM(selling_price_int) AS selling_price_sum
FROM tv_type_subq
GROUP BY 1
)

SELECT *
FROM sum_sell_subq