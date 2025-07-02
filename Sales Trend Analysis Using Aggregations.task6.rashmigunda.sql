SELECT
    YEAR(`Date`) AS order_year,
    MONTH(`Date`) AS order_month,
    SUM(`Total Revenue`) AS total_revenue,
    COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM onlinesales GROUP BY YEAR(`Date`), MONTH(`Date`) ORDER BY order_year, order_month;

