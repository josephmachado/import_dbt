# import_dbt

To use seed from project_1 in project_2:

```bash
git clone https://github.com/josephmachado/import_dbt.git
cd import_dbt
cd project_2
rm -rf myenv
rm -rf *.duckdb
# set up venv and run dbt
python -m venv myenv
source myenv/bin/activate
pip install -r requirements.txt
source myenv/bin/activate
dbt clean
dbt deps
dbt seed
dbt run
```


```sql
duckdb dbt.duckdb
select * from stg_package_seed; -- This is a model in project_2 using seed from project_1
```
