-- ============================================
-- SQL Basics -- Venkateshwar Rao Eturi
-- Started: April 2026
-- Topic: SELECT fundamentals
-- ============================================

-- A comment in SQL starts with two dashes (--)
-- Comments are notes to yourself and other humans
-- SQL ignores everything after --

-- LESSON 1: Basic SELECT
-- Selecting specific columns from a table

SELECT
    customer_id,
    customer_name,
    account_type,
    balance
FROM
    customers;

-- LESSON 2: Select everything from a table
-- The * means "give me all columns"

SELECT *
FROM customers;

-- LESSON 3: SELECT with WHERE clause
-- WHERE filters rows based on a condition

SELECT
    customer_id,
    customer_name,
    balance
FROM
    customers
WHERE
    balance > 10000;

-- LESSON 4: WHERE with multiple conditions
-- AND means both conditions must be true
-- OR means either condition can be true

SELECT
    customer_id,
    customer_name,
    account_type,
    balance
FROM
    customers
WHERE
    account_type = 'SAVINGS'
    AND balance > 5000;

-- LESSON 5: ORDER BY -- sorting your results
-- ASC = ascending (smallest to largest)
-- DESC = descending (largest to smallest)

SELECT
    customer_id,
    customer_name,
    balance
FROM
    customers
WHERE
    account_type = 'SAVINGS'
ORDER BY
    balance DESC;

-- LESSON 6: LIMIT -- restrict number of rows returned
-- Very useful for previewing large datasets

SELECT
    customer_id,
    customer_name,
    balance
FROM
    customers
ORDER BY
    balance DESC
LIMIT 10;