# README

[![Build Status](https://travis-ci.com/dzagozdzon/DrinkForTonight.svg?branch=master)](https://travis-ci.com/dzagozdzon/DrinkForTonight)
![](https://img.shields.io/github/license/dzagozdzon/DrinkForTonight.svg)

**DrinkForTonight** is web application for cataloging and matching drinks based on ingredients. 

### Dependencies:
App is developed on Ruby version `2.5.1` environment,
Rails version `5.2.1`,
MySQL `5.7` database.

## Preview
You can preview app at:
__[DrinkForTonight](https://drinkfortonight.herokuapp.com/)__ Heroku.

## Setup

### Database:

```bash
bundle install
rails db:migrate
```

### Running the app:
```bash
rails s
```

### Running tests:
```bash
bundle exec rspec
```

## Author:
* [Dariusz Zagożdżon](https://pl.linkedin.com/in/dariusz-zago%C5%BCd%C5%BCon-b6a324154)

## License
This code is distributed under the terms and conditions of the
[MIT license](https://github.com/dzagozdzon/DrinkForTonight/blob/master/LICENSE).