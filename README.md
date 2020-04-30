You can only specify up to 5 layers in your lambda. Let's squeeze modules into one layer and hack this rule.

+ clone this repository
+ edit `requirements.txt` as you want
+ replace arugments of `--layer-name`, `--region` and `--runtime` in `publish_layer.sh`.
+ `sh publish_layer.sh`

That's it!

If you want to include some binary files like `headless-chromium` and `chromedriver`, yes you can do it. Please check out [selenium branch](https://github.com/umihico/fav-py-modules/tree/selenium).
