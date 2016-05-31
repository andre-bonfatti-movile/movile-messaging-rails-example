## Movile Messaging Integration Example - RoR

This example project has a goal to show a Ruby on Rails based implementation of an integration with the Movile SMS sending API.

### Environment Versioning
This project was created under the following environment and it should not execute properly on different occasions:

```
ruby version: 2.3.0
rails version: 4.2.3
```

We encourage you to use `ruby` versions higher than `2.1` and `rails` version higher or equal than `4.2`

## Before running

### Authentication Fields

Make sure you set these variables on `config/secrets.yml`

```
API_AUTH_USERNAME: <your_username>
API_AUTH_TOKEN: <your_token>
```

### Dependencies

This project uses `HTTParty` gem, so make sure you run `bundle` before testing

### Step-by-step on how to run this project

1. Download or clone this repo
2. Set the authentication variables on `secrets.yml`. To get your authentication data, login on [Movile Messaging](https://messaging.movile.com/messaging/home)
3. run `bundle` on your project folder
4. run `rake db:migrate`
5. run your server: `rails server`
