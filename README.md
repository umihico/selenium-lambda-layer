You can only specify up to 5 layers in your lambda. Let's squeeze modules into one layer and hack this rule.

+ clone this repository
+ edit `requirements.txt` as you want
+ replace arugments of `--layer-name`, `--region` and `--runtime` in `publish_layer.sh`.
+ `sh publish_layer.sh`

That's it!

If you want to include some binary files like `headless-chromium` and `chromedriver`, yes you can do it. Please check out [publish_selenium_layer.sh](https://github.com/umihico/fav-py-modules/blob/selenium/publish_selenium_layer.sh) and [scraping.py](https://github.com/umihico/fav-py-modules/blob/selenium/scraping.py).
This selenium binaries works with python 3.7. not with 3.8 :(
