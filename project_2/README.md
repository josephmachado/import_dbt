# How to reference a seed from a different dbt project?

Code for the blog post: [How to refernce a seed from a different dbt project?](https://www.startdataengineering.com/post/ref-seed-from-diff-dbt-project/)

## Setup & Prerequisites

### Prerequisites

1. [Python](https://www.python.org/downloads/)

Clone and cd into this repo:

```bash
git clone https://github.com/josephmachado/import_dbt.git
cd import_dbt
```

## Importing packages

We will be downloading the package `project_1` into the dbt project `project_2`.


```bash
cd project_2

# remove virtual env files and duckd db files from prior runs
rm -rf myenv
rm -rf *.duckdb

# set up venv
python -m venv myenv
source myenv/bin/activate
pip install -r requirements.txt
source myenv/bin/activate

# Clean out old dbt files
dbt clean

# download dnt package dependencies
dbt deps
dbt seed
dbt run
```

## Verifying seed access from different dbt project

Ensure that we have accessed the seed data from `project_1` in our `project_2` dbt project.

```sql
duckdb dbt.duckdb
select * from stg_package_seed; -- This is a model in project_2 using seed from project_1
```
