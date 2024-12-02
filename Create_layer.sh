mkdir 

pip install google-auth google-auth-oauthlib google-auth-httplib2 -t google_oauth2_layer/python

cd google_oauth2_layer
zip -r ../google_oauth2_layer.zip python
cd ..

aws s3 cp google_oauth2_layer.zip s3:///google_oauth2_layer.zip
------

mkdir google_oauth2_layer
mkdir googleapiclient_layer
mkdir botocore_layer


pip install google-auth google-auth-oauthlib google-auth-httplib2 -t google_oauth2_layer/python
pip install google-api-python-client -t googleapiclient_layer/python
pip install botocore -t botocore_layer/python

cd google_oauth2_layer
zip -r ../google_oauth2_layer.zip python
cd ..

cd googleapiclient_layer
zip -r ../googleapiclient_layer.zip python
cd ..

cd botocore_layer
zip -r ../botocore_layer.zip python
cd ..




aws s3 cp google_oauth2_layer.zip s3://your-s3-bucket-name/google_oauth2_layer.zip
aws s3 cp googleapiclient_layer.zip s3://your-s3-bucket-name/googleapiclient_layer.zip
aws s3 cp botocore_layer.zip s3://your-s3-bucket-name/botocore_layer.zip



mkdir psycopg2_layer

pip install psycopg2 -t psycopg2_layer/python

cd psycopg2_layer

zip -r ../psycopg2_layer.zip python

cd ..

aws s3 cp psycopg2.zip s3://bottele/psycopg2_layer.zip



# chuẩn
sudo yum install python3.11
sudo python3.11 -m ensurepip --upgrade
python3.11 -m pip install psycopg2-binary -t python/
zip -r psycopg2.zip python