# scratch-docker-rails
This project is a scratch for dockerized rails application

## How use this repo
- Move `Dockerfile` and `docker-compose.yml` to root from one of this folders:
    - `complete` is a setup with rails, postgress, mongo, redis and sidekiq images
    - `mongo-only` is a setup with rails, mongo, redis and sidekiq images
    - `postgress-only` is a setup with rails, postgress, redis and sidekiq images
    - Or use `mover.sh` to move the files like: `mover.sh "complete"`
- Replace `scratch` in docker-files to the name of your application (or use `renamer.sh` like: `renamer.sh "name_of_project"`)
- Delete the folders that you didn't use
- Run one of commands of initializing commands on *Initializing commands*
- Run `docker-compose build`
- Run `docker-compose up` to start application
- If you're using `complete` or `postgress-only`, then in another terminal, run: `docker-compose run server rake db:create` to create the database

## Initializing commands

Initializing rails application

`docker-compose run server rails new . --force --database=postgresql --no-deps --skip-test --skip-system-test`


Initializing rails API (recommended for *complete* and *postgress-only*)

`docker-compose run server rails new . --api -T --force --database=postgresql --no-deps --skip-test --skip-system-test`

Initializing rails API without database-adapter and active-record (recommended for *mongo-only*)

`docker-compose run server rails new . --api -T --force --no-deps --skip-active-record --skip-test --skip-system-test`

## Useful commands

After initializing or generation file through docker it's needed to run:
`sudo chown -R $USER:$USER .`

Starting application with containers running in the background: `docker-compose up -d`

Stoping the application: `docker-compose down`

## Useful gems

- Debug
    - [pry-byebug](https://github.com/deivid-rodriguez/pry-byebug)
- Spec/Tests
    - [rspec-rails](https://github.com/rspec/rspec-rails)
    - [vcr](https://github.com/vcr/vcr) - Cache requests for testing
    - [faker](https://github.com/faker-ruby/faker) - Generate data for specs
    - [factory_bot_rails](https://github.com/thoughtbot/factory_bot_rails) - Factory model data
- Design Pattern
    - [rubocop](https://github.com/rubocop/rubocop)
    - [rubocop-rails](https://github.com/rubocop/rubocop-rails)
    - [rubocop-rspec](https://github.com/rubocop/rubocop-rspec)
- Documentation
    - [annotate](https://github.com/ctran/annotate_models) - Add a comment summarizing the current schema into files
    - [railroady](https://github.com/preston/railroady) - Generates UML diagrams
    - [rswag](https://github.com/rswag/rswag) - API documentation
    - [rswag-specs](https://github.com/rswag/rswag) - Use together with rswag
- Mongo (NoSQL)
    - [mongoid](https://github.com/mongodb/mongoid)
    - [mongoid-enum (https://github.com/choilive/mongoid-enum.git)](https://github.com/choilive/mongoid-enum.git) - Enum for mongo (use mongoid v7)
- Background services
    - [sidekiq](https://github.com/sidekiq/sidekiq)
    - [sideikq-scheduler](https://github.com/sidekiq-scheduler/sidekiq-scheduler)
- Pagination
    - [kaminari](https://github.com/kaminari/kaminari)
    - [kaminari-mongoid](https://github.com/kaminari/kaminari-mongoid)
- Crawler / Scraper
    - [nokogiri](https://github.com/sparklemotion/nokogiri) - Makes it easy and painless to work with XML and HTML
    - [mechanize](https://github.com/sparklemotion/mechanize) - Interact with websites

## Useful tools

- [Make](https://www.tutorialspoint.com/unix_commands/make.htm) - Utility for building and maintaining groups of programs
- [Fig.io](https://fig.io/) - Future shell

## Useful extensions for VSCODE

- [change-case](https://marketplace.visualstudio.com/items?itemName=wmaurer.change-case)
- [VSCode Ruby](https://marketplace.visualstudio.com/items?itemName=wingrunr21.vscode-ruby)
- [OM Theme](https://draculatheme.com/visual-studio-code)
- [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)
- [Better Haml](https://marketplace.visualstudio.com/items?itemName=karunamurti.haml)
- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
- [indent-rainbow](https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow)
- [Live Share](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare)
- [Ruby](https://marketplace.visualstudio.com/items?itemName=rebornix.Ruby)
- [ruby-rubocop-revived](https://marketplace.visualstudio.com/items?itemName=LoranKloeze.ruby-rubocop-revived) - Make it able to integrate rubocop and vscode (Ruby plugin required)
