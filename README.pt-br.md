# scratch-docker-rails
[![en](https://img.shields.io/badge/lang-en-red.svg)](https://github.com/felipeejunges/scratch-docker-rails/blob/master/README.md)

Esse projeto é um rascunho para aplicações rails dockerizadas

## Como usar esse repositório
- Mova os arquivos `Dockerfile` e `docker-compose.yml` para a pasta raiz de um das pastas:
    - `mongo-postgress` é uma configuração com rails, postgress, mongo, redis e sidekiq
    - `mongo-only` é uma configuração com rails, mongo, redis e sidekiq
    - `postgress-only` é uma configuração com rails, postgress, redis e sidekiq 
    - Ou use `mover.sh` para mover os arquivos, exemplo: `./mover.sh "mongo-postgress"`
- Renomeie `scratch` com o nome da sua aplicação os arquivos relacionados ao docker (ou use `renamer.sh`, exemplo: `./renamer.sh "name_of_project"`)
- Delete os arquivos/pastas não necessários (ou use `remover.sh`, exemplo: `./remover.sh`)
- Rode um dos comandos que estão em *Comandos de Inicialização*
- Rode `docker-compose build`
- Rode `docker-compose up` para iniciar a aplicação
- Se você está usando `mongo-postgress` ou `postgress-only`, estando em outro terminal, rode: `docker-compose run server rake db:create` para criar o banco de dados

## Comandos de Inicialização

Iniciar uma aplicação rails

`docker-compose run server rails new . --force --database=postgresql --no-deps --skip-test --skip-system-test`

Inicializar uma aplicação API rails (recomendado para *mongo-postgress* ou *postgress-only*)

`docker-compose run server rails new . --api -T --force --database=postgresql --no-deps --skip-test --skip-system-test`

Inicializar uma aplicação API rails sem adaptador de banco ed dados e sem active-record (recomendado para *mongo-only*)

`docker-compose run server rails new . --api -T --force --no-deps --skip-active-record --skip-test --skip-system-test`

## Comandos úteis

Se você estiver usando docker para inicializar ou gerar arquivos, use:
`sudo chown -R $USER:$USER .`

Para iniciar a aplicação com os containers rodando em background: `docker-compose up -d`

Parar a aplicação: `docker-compose down`

## Gems úteis

- Debug
    - [pry-byebug](https://github.com/deivid-rodriguez/pry-byebug)
- Spec/Tests
    - [rspec-rails](https://github.com/rspec/rspec-rails)
    - [vcr](https://github.com/vcr/vcr) - Cachear requisições para teste
    - [faker](https://github.com/faker-ruby/faker) - Gerar dados para testes
    - [factory_bot_rails](https://github.com/thoughtbot/factory_bot_rails) - Factory model data
- Design Pattern
    - [rubocop](https://github.com/rubocop/rubocop)
    - [rubocop-rails](https://github.com/rubocop/rubocop-rails)
    - [rubocop-rspec](https://github.com/rubocop/rubocop-rspec)
- Documentação
    - [annotate](https://github.com/ctran/annotate_models) - Adicionar a estrutura do banco de dados relacionado a model como comentário dentro da model
    - [railroady](https://github.com/preston/railroady) - Gerar diagramas UM
    - [rswag](https://github.com/rswag/rswag) - Documentação da API
    - [rswag-specs](https://github.com/rswag/rswag) - Use em conjunto com rswag
- Mongo (NoSQL)
    - [mongoid](https://github.com/mongodb/mongoid)
    - [mongoid-enum (https://github.com/choilive/mongoid-enum.git)](https://github.com/choilive/mongoid-enum.git) - Enum para mongo (usar mongoid v7)
- Background
    - [sidekiq](https://github.com/sidekiq/sidekiq)
    - [sideikq-scheduler](https://github.com/sidekiq-scheduler/sidekiq-scheduler)
- Paginação
    - [kaminari](https://github.com/kaminari/kaminari)
    - [kaminari-mongoid](https://github.com/kaminari/kaminari-mongoid)
- Crawler / Scraper
    - [nokogiri](https://github.com/sparklemotion/nokogiri) - Facilita o trabalho com XML e HTML
    - [mechanize](https://github.com/sparklemotion/mechanize) - Interagir com websites

## Ferramentas Úteis

- [Make](https://www.tutorialspoint.com/unix_commands/make.htm) - Plugin útil para criação e manutenção em comandos
- [Fig.io](https://fig.io/) - Shell do futuro

## Extensões úteis para VSCODE

- [change-case](https://marketplace.visualstudio.com/items?itemName=wmaurer.change-case)
- [VSCode Ruby](https://marketplace.visualstudio.com/items?itemName=wingrunr21.vscode-ruby)
- [OM Theme](https://draculatheme.com/visual-studio-code)
- [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)
- [Better Haml](https://marketplace.visualstudio.com/items?itemName=karunamurti.haml)
- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
- [indent-rainbow](https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow)
- [Live Share](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare)
- [Ruby](https://marketplace.visualstudio.com/items?itemName=rebornix.Ruby)
- [ruby-rubocop-revived](https://marketplace.visualstudio.com/items?itemName=LoranKloeze.ruby-rubocop-revived) - Torna possível a integração do rubocop com vscode (É necessário o plugin/extensão do rails) 
