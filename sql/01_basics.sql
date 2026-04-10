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

-- ============================================================
-- LESSON 7: Column Aliases using AS
-- ============================================================
-- AS gives a column a friendlier display name in your output.
-- The real column name in the table never changes.
-- In banking reports, this is used constantly.

SELECT
    customer_id                 AS "Customer ID",
    account_number              AS "Account Number",
    transaction_amount          AS "Amount (INR)",
    transaction_date            AS "Transaction Date",
    status                      AS "Payment Status"
FROM transactions;

-- ============================================================
-- LESSON 8: DISTINCT keyword
-- ============================================================
-- DISTINCT removes duplicate values from your results.
-- Very useful in banking to find unique customers, 
-- unique transaction types, unique branches etc.

-- How many unique transaction types exist in our system?
SELECT DISTINCT transaction_type
FROM transactions;

-- Which unique cities do our customers come from?
SELECT DISTINCT city
FROM customers;

-- Unique combination of transaction_type AND status
SELECT DISTINCT transaction_type, status
FROM transactions
ORDER BY transaction_type, status;

-- ============================================================
-- LESSON 9: Handling NULL values
-- ============================================================
-- NULL means the value is MISSING or UNKNOWN.
-- NULL is NOT zero. NULL is NOT an empty string.
-- NULL is the absence of any value whatsoever.
-- In banking: a missing phone number, an unprocessed 
-- transaction, a customer with no middle name -- all NULLs.

-- Find all transactions where remarks are missing
SELECT customer_id, transaction_amount, remarks
FROM transactions
WHERE remarks IS NULL;

-- Find transactions where remarks ARE provided
SELECT customer_id, transaction_amount, remarks
FROM transactions
WHERE remarks IS NOT NULL;

-- NEVER use = NULL. This will ALWAYS return zero rows.
-- WRONG:
-- SELECT * FROM transactions WHERE remarks = NULL;

-- RIGHT:
-- SELECT * FROM transactions WHERE remarks IS NULL;

-- Replace NULL with a default value using COALESCE
-- COALESCE returns the first non-NULL value it finds
SELECT
    customer_id,
    transaction_amount,
    COALESCE(remarks, 'No remarks provided') AS "Remarks"
FROM transactions;

-- ============================================================
-- LESSON 10: BETWEEN, IN and LIKE operators
-- ============================================================

-- BETWEEN: filter values within a range (inclusive)
-- Find all transactions between 1000 and 50000 rupees
SELECT customer_id, transaction_amount, transaction_date
FROM transactions
WHERE transaction_amount BETWEEN 1000 AND 50000;

-- BETWEEN works on dates too
-- Find all transactions in the month of January 2026
SELECT customer_id, transaction_amount, transaction_date
FROM transactions
WHERE transaction_date BETWEEN '2026-01-01' AND '2026-01-31';

-- IN: match against a list of values
-- Find transactions that are either PENDING or FAILED
SELECT customer_id, transaction_amount, status
FROM transactions
WHERE status IN ('PENDING', 'FAILED');

-- IN is cleaner than writing multiple OR conditions
-- AVOID this:
-- WHERE status = 'PENDING' OR status = 'FAILED'
-- PREFER this:
-- WHERE status IN ('PENDING', 'FAILED')

-- LIKE: search for patterns in text
-- % means "any number of characters"
-- _ means "exactly one character"

-- Find all customers whose name starts with 'A'
SELECT customer_id, customer_name
FROM customers
WHERE customer_name LIKE 'A%';

-- Find all customers whose name ends with 'Kumar'
SELECT customer_id, customer_name
FROM customers
WHERE customer_name LIKE '%Kumar';

-- Find all account numbers containing '2026'
SELECT account_number
FROM accounts
WHERE account_number LIKE '%2026%';

-- Find customers whose name has exactly 4 characters
SELECT customer_id, customer_name
FROM customers
WHERE customer_name LIKE '____';

-- ============================================================
-- LESSON 11: First Real Banking Scenario Query
-- ============================================================
-- Scenario: The bank's operations manager has asked for a
-- report of all suspicious or incomplete transactions for
-- the month of March 2026.
--
-- Requirements:
-- 1. Transaction amount between 10,000 and 500,000 rupees
-- 2. Status is either PENDING or FAILED
-- 3. Remarks are missing (NULL)
-- 4. Customer name starts with a known pattern 'VEN'
-- 5. Show friendly column names in the output
-- 6. No duplicate rows
-- 7. Ordered by amount descending (highest risk first)

SELECT DISTINCT
    customer_id                 AS "Customer ID",
    account_number              AS "Account Number",
    transaction_amount          AS "Amount (INR)",
    transaction_date            AS "Transaction Date",
    status                      AS "Status",
    COALESCE(remarks, 'No remarks provided') AS "Remarks"
FROM transactions
WHERE transaction_amount BETWEEN 10000 AND 500000
    AND status IN ('PENDING', 'FAILED')
    AND remarks IS NULL
    AND customer_name LIKE 'VEN%'
    AND transaction_date BETWEEN '2026-03-01' AND '2026-03-31'
ORDER BY transaction_amount DESC;

