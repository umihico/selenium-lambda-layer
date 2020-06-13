AWS lambda & selenium & python is powerful solution, but requirements conflicts are sensitive.
You can upload them as lambda layer and you don't need to be careful and upload them every time ;)

+ run [publish_selenium_layer.sh](https://github.com/umihico/selenium-lambda-layer/blob/master/publish_selenium_layer.sh)
+ open lambda function and use [scraping.py](https://github.com/umihico/selenium-lambda-layer/blob/master/scraping.py) as example.
+ import the layer above script created.

That's it!

This selenium binaries works with python 3.7. NOT with 3.8 :(

If you don't want create function and import this layer for each scraping purposes, please visit my project [pythonista-chromeless](https://github.com/umihico/pythonista-chromeless/)
