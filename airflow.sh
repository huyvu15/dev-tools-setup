sudo yum update -y

sudo yum install python3 python3-pip -y


sudo yum install gcc-c++ -y
sudo yum install postgresql-devel -y  # Nếu bạn dùng PostgreSQL

python3 -m venv airflow_venv
source airflow_venv/bin/activate


pip install "apache-airflow[celery]==2.4.0" --constraint "https://raw.githubusercontent.com/apache/airflow/constraints-2.4.0/constraints-3.7.txt"

airflow db init

# lưu tài nguyên
source airflow_venv/bin/activate

# tạo tài khoản mật khẩu
airflow users create \
    --username admin \
    --firstname Firstname \
    --lastname Lastname \
    --role Admin \
    --email example@example.com


airflow webserver -p 8080

airflow scheduler

# permissions write log 
sudo chown -R ec2-user:ec2-user /home/ec2-user/airflow/logs

# add rich = false in airflow.cfg

# kill webserver
kill -9 2727 8617 8618 8619 8628
