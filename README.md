This is is a base padrino project equipped with sinatra-asset-pack and skeleton.

Setup
=====
```
bundle install
```

Start
=====

```
# start in development
thin start -C config/thin/app.yml
# start in production
thin start -C config/thin/app.yml -e production
```

Debugging
=========

```
# open the console
padrino console

# get the environment
Padrino::Application.environment
```


Assets
======

Sinatra Asset Pack does this. Configure in app/app.rb.


