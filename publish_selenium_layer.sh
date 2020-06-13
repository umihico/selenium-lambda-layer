mkdir -p python/bin/
curl -SL https://github.com/adieuadieu/serverless-chrome/releases/download/v1.0.0-37/stable-headless-chromium-amazonlinux-2017-03.zip > headless-chromium.zip
unzip headless-chromium.zip -d python/bin/
curl -SL https://chromedriver.storage.googleapis.com/2.37/chromedriver_linux64.zip > chromedriver.zip
unzip chromedriver.zip -d python/bin/
rm -rf chromedriver.zip headless-chromium.zip
docker run --rm -v $(pwd):/var/task -w /var/task lambci/lambda:build-python3.7 pip install selenium -t ./python
zip -r layer.zip python
aws lambda publish-layer-version --layer-name selenium --zip-file fileb://layer.zip --compatible-runtimes python3.7
rm -rf layer.zip python
