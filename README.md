## README

Greedy first taste of rails 5 API.

![alt text](https://github.com/jchappypig/online-application-api/blob/master/Screen.Shot.2016-02-28.at.12.29.04.am.png "You see this because you are smart")

### Upgrade to rails 5
Install Ruby 2.3.0
```sh
rvm install 2.3.0
rvm use 2.3.0 --default
```

Create a new gemset to install rails 5
```sh
gem update
rvm use ruby-2.3.0@rails5.0 --create
gem install rails --pre
```

Reference
http://railsapps.github.io/updating-rails.html

### Config Circle CI to support rails 5

create a circle.yml to setup ruby version on Circle CI

```
machine:
  ruby:
    version: 2.3.0
```