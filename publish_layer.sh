mkdir -p python/bin/
docker run --rm -v $(pwd):/var/task -w /var/task lambci/lambda:build-python3.7 pip install -r requirements.txt -t ./python
zip -r layer.zip python
aws lambda publish-layer-version --layer-name favorites --zip-file fileb://layer.zip --compatible-runtimes python3.7 --region ap-northeast-1
rm -rf layer.zip python
