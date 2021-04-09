AWS lambda & selenium & python is powerful solution, but requirements conflicts are sensitive.
You can upload them as lambda layer and you don't need to be careful and upload them every time ;)

+ run [publish_selenium_layer.sh](https://github.com/umihico/selenium-lambda-layer/blob/master/publish_selenium_layer.sh)
+ open lambda function and use [scraping.py](https://github.com/umihico/selenium-lambda-layer/blob/master/scraping.py) as example.
+ make sure you extend lambda itself time out. (The default is 3 seconds)
+ import the layer above script created.

That's it!

This selenium binaries works with python 3.7. **NOT with 3.8 :(**

If you want Python 3.8, you need to deploy as docker container image instead of lambda layer, pleate visit [docker-selenium-lambda](https://github.com/umihico/docker-selenium-lambda)

If you don't want to create function and import this layer for each scraping purposes, please visit my project [pythonista-chromeless](https://github.com/umihico/pythonista-chromeless/)
