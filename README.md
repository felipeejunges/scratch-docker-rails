# scratch-docker-rails
[![pt-br](https://img.shields.io/badge/lang-pt--br-green.svg)](https://github.com/felipeejunges/scratch-docker-rails/blob/master/README.pt-br.md)
This project is a scratch for dockerized rails application

## How use this repo
- Move `Dockerfile` and `docker-compose.yml` to root from one of this folders:
    - `mongo-postgress` is a setup with rails, postgress, mongo, redis and sidekiq images
    - `mongo-only` is a setup with rails, mongo, redis and sidekiq images
    - `postgress-only` is a setup with rails, postgress, redis and sidekiq images
    - Or use `mover.sh` to move the files like: `./mover.sh "mongo-postgress"`
- Replace `scratch` in docker-files to the name of your application (or use `renamer.sh` like: `./renamer.sh "name_of_project"`)
- Delete the folders that you didn't use (or use `remover.sh` like `./remover.sh`)
- Run one of commands of initializing commands on *Initializing commands*
- Run `docker-compose build`
- Run `docker-compose up` to start application
- If you're using `mongo-postgress` or `postgress-only`, then in another terminal, run: `docker-compose run server rake db:create` to create the database

## Initializing commands

Initializing rails application

`docker-compose run server rails new . --force --database=postgresql --no-deps --skip-test --skip-system-test`
or 
`rails new . --force --no-deps --skip-test --skip-system-test -j esbuild --css bootstrap`


Initializing rails API (recommended for *mongo-postgress* and *postgress-only*)

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
    - [database_cleaner](https://github.com/DatabaseCleaner/database_cleaner)
    - [database_cleaner-mongoid](https://github.com/DatabaseCleaner/database_cleaner-mongoid)
    - [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers)
    - [rspec_junit_formatter](https://github.com/sj26/rspec_junit_formatter)
    - [rspec-sidekiq](https://github.com/wspurgin/rspec-sidekiq)
    - [rails-controller-testing](https://github.com/rails/rails-controller-testing)
    - [capybara](https://github.com/teamcapybara/capybara)
    - [selenium-webdriver](https://rubygems.org/gems/selenium-webdriver)
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
    - [pagy](https://github.com/ddnexus/pagy)
- Crawler / Scraper
    - [nokogiri](https://github.com/sparklemotion/nokogiri) - Makes it easy and painless to work with XML and HTML
    - [mechanize](https://github.com/sparklemotion/mechanize) - Interact with websites
- Coverage
    - [simplecov](https://github.com/simplecov-ruby/simplecov)

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
