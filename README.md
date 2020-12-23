# Ruby on Rails blog project

## Getting it up & running

Firstly, you need to make sure you have <b>mysql2</b> installed on your device.

To run the project run following commands in the project directory:

```
bundle install
rails s
```

### Creating database

<b>In case there are issues with the database and the project isn't loading</b>, in `/config/database.yml` file you want to change the `database.yml` file.

```
rake db:create
```

Basically it's recommended to use different gems for each environment, you should also create three databases, each for <b>development, testing, and production</b> environment. You can configure them in your `config/database.yml` file.

``` yml
default: &default
  adapter: mysql2
  host: localhost
  username: bunbun
  password: Admin123admin!
  encoding: utf8
  pool: 5
  # timeout: 5000

development:
  <<: *default
  database: db/database_name_here           // enter database name here

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  <<: *default
  database: db/database_name_here           // enter database name here

production:
  <<: *default
  database: db/database_name_here           // enter database name here

```

### Migrating

Migrations setup the tables in the database.
After that, you want to run the following command to get it up and running:

```
rake db:migrate
```

This should set our project up and it should be up and running.

To test it, we can run `rails s` and head to `http://localhost:3000/` to see our project.