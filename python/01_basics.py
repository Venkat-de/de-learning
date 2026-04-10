# ============================================================
# LESSON 1: Python basics — connected to SQL concepts
# ============================================================
# In SQL we SELECT data from tables.
# In Python we store data in variables and print it.
# Think of a variable as a single cell in a database column.

# ============================================================
# Part 1: Variables — storing data
# ============================================================
# In SQL: customer_id, transaction_amount, status are columns
# In Python: they become variables

customer_id = 1001
account_number = "ACC2026001"
transaction_amount = 75000.50
transaction_date = "2026-03-15"
status = "PENDING"
remarks = None          # None in Python = NULL in SQL

# ============================================================
# Part 2: Print — displaying data
# ============================================================
# In SQL we use SELECT to display data
# In Python we use print()

print("Customer ID      :", customer_id)
print("Account Number   :", account_number)
print("Amount (INR)     :", transaction_amount)
print("Transaction Date :", transaction_date)
print("Status           :", status)
print("Remarks          :", remarks)

# ============================================================
# Part 3: Data types — just like SQL column types
# ============================================================
# In SQL: INT, VARCHAR, DECIMAL, DATE, NULL
# In Python: int, str, float, str, None

print("\n--- Data Types ---")
print(type(customer_id))          # int      = SQL INT
print(type(account_number))       # str      = SQL VARCHAR
print(type(transaction_amount))   # float    = SQL DECIMAL
print(type(status))               # str      = SQL VARCHAR
print(type(remarks))              # NoneType = SQL NULL

# ============================================================
# Part 4: Checking for None -- just like IS NULL in SQL
# ============================================================
# In SQL:   WHERE remarks IS NULL
# In Python: if remarks is None

print("\n--- NULL check ---")
if remarks is None:
    print("Remarks : No remarks provided")   # COALESCE in SQL
else:
    print("Remarks :", remarks)