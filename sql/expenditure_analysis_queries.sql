
--TOTAL SPENDING BY COUNTY--

SELECT
    county,
    SUM(amount) AS total_spending
FROM expenditures
WHERE county <> 'UNKNOWN'
GROUP BY county
ORDER BY total_spending DESC;




--  TOTAL SPENDING BY MAJOR SPENDING CATEGORY--

SELECT
    major_spending_category,
    SUM(amount) AS total_category_spending
FROM expenditures
WHERE county <> 'UNKNOWN'
GROUP BY major_spending_category
ORDER BY total_category_spending DESC;




-- TOTAL SPENDING BY AGENCY --


SELECT
    agency_name,
    SUM(amount) AS total_spending
FROM expenditures
WHERE county <> 'UNKNOWN'
GROUP BY agency_name
ORDER BY total_spending DESC;




-- SPENDING BY COUNTY AND MAJOR SPENDING CATEGORY--


SELECT
    county,
    major_spending_category,
    SUM(amount) AS total_spending
FROM expenditures
WHERE county <> 'UNKNOWN'
GROUP BY county, major_spending_category
ORDER BY county ASC, total_spending DESC;




-- 5. COUNTY SHARE OF TOTAL SPENDING--



SELECT
    county,
    SUM(amount) AS total_spending,
    SUM(amount) * 100.0 / SUM(SUM(amount)) OVER () AS spending_share_percent
FROM expenditures
WHERE county <> 'UNKNOWN'
GROUP BY county
ORDER BY total_spending DESC;


-- TOP SPENDING CATEGORY WITHIN EACH COUNTY--


SELECT
    county,
    major_spending_category,
    total_spending
FROM (
    SELECT
        county,
        major_spending_category,
        SUM(amount) AS total_spending,
        RANK() OVER (
            PARTITION BY county
            ORDER BY SUM(amount) DESC
        ) AS category_rank
    FROM expenditures
    WHERE county <> 'UNKNOWN'
    GROUP BY county, major_spending_category
) ranked_categories
WHERE category_rank = 1
ORDER BY total_spending DESC;