# tiny-house

## Dev tools

### Asciidoctor

#### Request

* Ruby

#### Install

* `gem install asciidoctor`
* `gem install asciidoctor-pdf`

#### Manual execution

* `chmod 744 build-asciidoc-file.sh`
* `./buil-asciidoc-file.sh`

You SHOULD NOT have to execute it, this script will be executed on precommit hook

### Hook and Linter

Husky & https://github.com/conventional-changelog/commitlint

#### Request

* Git >= 2.13.2
* Npm
* NodeJS >=v10.22.0

#### Install

* `yarn install`
* `chmod 744 detect-change-on-changelog.sh`
