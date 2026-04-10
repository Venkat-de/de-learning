# Session Handover — 10 April 2026 (Day 02 — Friday)

## Student Profile
- Name: Venkateshwar Rao Eturi
- Location: Perth WA, Australia (UTC+8)
- Background: Former Branch Manager, India
- Banking domain knowledge: Strong
- Prior database experience: FoxPro 2.5/2.6, Oracle (basic)
- Learning style: Slow and thorough — plan designed accordingly
- Goal: Junior to mid-level Data Engineering job in Australia
- Timeline: 9 months — April 2026 to January 2027

## Environment — COMPLETED
- Microsoft account: venkat.de2026@outlook.com
- GitHub account: Venkat-de (github.com/Venkat-de)
- Repository: github.com/Venkat-de/de-learning
- Linux hostname: de-learning
- Git configured: Venkateshwar Rao Eturi / venkat.de2026@outlook.com
- VS Code 1.115.0 installed
- Python 3.12.3 verified
- Extensions installed: Python, SQLTools, GitLens

## Repository Structure — COMPLETED
All 14 folders committed and live on GitHub:
sql, python, data-modeling, azure, dbt, databricks,
fabric, power-bi, governance, projects,
linux-bash, git-notes, docker, apis
Plus: handover/ folder for all session handover files

## Daily Session Structure — CONFIRMED FROM DAY 03
Every session follows this exact structure:
- Block 1 — 45 min — Assignment test from previous day (documented)
- Block 2 — 45 min — SQL lesson
- Block 3 — 45 min — Python lesson
- Block 4 — 30 min — Git + GitHub
- Block 5 — 30 min — Linux / Bash
- Block 6 — 15 min — VS Code habit
- Block 7 — 30 min — Documentation + assignments
- Buffer  — 15 min — Overflow and questions
- Total   — 4 hours

## Commit Message Convention — CONFIRMED FROM DAY 02
Format: type: short description
Types: feat, fix, learn, docs
Examples:
- "learn: add SQL lessons 7-11 and Python lesson 1 basics"
- "feat: add linux-bash, git-notes, docker, apis folders"
- "docs: update handover file for Day 02"

## SQL Progress — IN PROGRESS
### File: sql/01_basics.sql — COMMITTED
### Lessons completed:
- Lesson 01 — SELECT specific columns
- Lesson 02 — SELECT all columns (*)
- Lesson 03 — WHERE clause single condition
- Lesson 04 — WHERE clause AND / OR
- Lesson 05 — ORDER BY ASC and DESC
- Lesson 06 — LIMIT
- Lesson 07 — Column aliases using AS
- Lesson 08 — DISTINCT keyword
- Lesson 09 — NULL handling — IS NULL, IS NOT NULL, COALESCE
- Lesson 10 — BETWEEN, IN, LIKE operators
- Lesson 11 — First real banking scenario query

### Key concepts understood:
- DISTINCT vs UNIQUE — explained perfectly in own words
- NULL vs zero vs empty string — understood clearly
- Wildcard difference — * (structural) vs % (pattern) — excellent insight
- COALESCE — replacing NULL with default value
- Combined query using all Day 02 concepts together

## Python Progress — IN PROGRESS
### File: python/01_basics.py — COMMITTED
### Lessons completed:
- Lesson 01 — Variables, data types, print(), None, NULL check
### Key connections made:
- None in Python = NULL in SQL
- print() in Python = SELECT in SQL
- int/str/float in Python = INT/VARCHAR/DECIMAL in SQL
- if x is None in Python = IS NULL in SQL
- if/else default in Python = COALESCE in SQL

## Git Progress — IN PROGRESS
### Commands learned and used:
- git add, git commit, git push, git pull
- git status, git log --oneline
- git diff HEAD~1 HEAD
### Concepts understood:
- Commit hash — unique fingerprint for every snapshot
- HEAD — your current position in the timeline
- origin — GitHub remote
- Staging area — what git add does
- Commit message convention — type: description
- Why 1 deletion appeared — missing newline at end of file

## Linux Progress — IN PROGRESS
### Commands learned and used:
- wc -l (count lines), wc -w (count words), wc -c (count characters)
- cd, ls, mkdir, touch, mv
- Integrated terminal in VS Code — Ctrl+` to open
### Key insight:
- wc -l is used in real DE work to verify row counts in data files

## VS Code Progress — IN PROGRESS
### Habits learned:
- Integrated terminal — Ctrl+` to open — never leave VS Code
- Save file — Ctrl+S
- code . to open VS Code from terminal
- code filename to open specific file

## Learning Plan — CONFIRMED
- 9 months — April 2026 to January 2027
- 5 days a week — Monday to Friday
- 4 hours per day — 7 structured blocks
- Target role: Junior to mid-level Data Engineer in Australia

### Phase 1 — Weeks 01–08 — Apr to Jun 2026
SQL + Python + Git + Linux + VS Code daily fundamentals
Mini project: Week 08 — banking payments report

### Phase 2 — Weeks 09–16 — Jun to Aug 2026
Data modeling + ETL/ELT + REST APIs + Docker introduction
Mini project: Week 15 — end-to-end ETL pipeline

### Phase 3 — Weeks 17–24 — Aug to Sep 2026
Azure — ADLS, ADF, Synapse, Fabric introduction
Certification: DP-900 — sit exam Week 24

### Phase 4 — Weeks 25–34 — Oct to Dec 2026
dbt + Apache Spark + Databricks + Delta Lake
Certification: Databricks Associate — sit exam Week 34

### Phase 5 — Weeks 35–39 — Dec 2026 to Jan 2027
Capstone project + portfolio + interview prep + job applications
Target: first 10 job applications by Week 39

## Employability Skills Coverage
Fully covered in plan:
SQL, Python, Git/GitHub, Linux/Bash, Data modeling,
ETL/ELT pipelines, REST APIs, JSON, Docker basics,
Azure (ADF, ADLS, Synapse, Fabric), dbt, Spark,
Databricks, Delta Lake, DP-900 cert, Databricks cert,
Capstone project, GitHub portfolio

## Day 03 Assignments — TO BE TESTED MONDAY 13 APR
### SQL
1. BETWEEN — find transactions 5,000 to 100,000 rupees in Jan 2026
2. IN — find customers with status ACTIVE, DORMANT or SUSPENDED
3. LIKE — find account numbers containing pattern ACC26
4. Combined — one query using BETWEEN + IN + IS NULL + ORDER BY

### Python
1. Add second transaction variables and print them in 01_basics.py
2. Change remarks from None to an actual value — observe output
3. Add plain English comments above each section explaining what it does

### Git
1. Run git log --oneline — write down what each commit represents
2. Try git log --oneline --graph — what does it show?
3. Commit all weekend changes with proper type: message format

### Linux
1. Run wc -l on python/01_basics.py — how many lines?
2. Run ls -la — what does it show?
3. Run cat sql/01_basics.sql | head -20 — what does it show?

### VS Code
1. Select a word and press Ctrl+D repeatedly — what happens?
2. Press Ctrl+P — what does it do?
3. Press Ctrl+Shift+P — what does it do?

## Open Items
1. Terminal folder colour — still showing blue (cosmetic)
2. Tech Stack badges — not rendering on GitHub (cosmetic)
3. Azure free account — set up Week 17 (Aug 2026)
4. Databricks Community Edition — set up Week 29 (Oct 2026)
5. Microsoft Fabric trial — set up Week 22 (Sep 2026)
6. Power BI Linux workaround — set up Week 22 (Sep 2026)

## Handover File History
- handover/HANDOVER-09-APR-2026.md — Day 01
- handover/HANDOVER-10-APR-2026.md — Day 02 (this file)

## How to Resume on Monday — Day 03
1. Open terminal
2. cd ~/de-learning
3. git pull
4. code .
5. Open handover/HANDOVER-10-APR-2026.md
6. Tell Claude: "I am back. Here is my handover file." and paste it
7. Claude will immediately test you on ALL Day 03 assignments
8. Be ready — have your answers prepared over the weekend!

## Day 02 Summary
An outstanding session. Plan designed, structure confirmed,
SQL Lessons 7-11 completed, first Python file written and run,
Linux wc command learned, VS Code integrated terminal adopted,
git diff used to investigate a mystery, 4 new folders added.
Brilliant questions asked throughout — DISTINCT vs UNIQUE,
* vs % wildcards, database safety fears addressed and resolved.
