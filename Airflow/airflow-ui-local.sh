echo 'Airflow UI Setup on local machine!'


export SLUGIFY_USES_TEXT_UNIDECODE=yes
pip install apache-airflow
pip install flask_bcrypt
export AIRFLOW_HOME=(pwd)
pip install #upgrade tenacity
airflow initdb
airflow webserver #port 8080
## now go to `http://localhost:8080` in browser
