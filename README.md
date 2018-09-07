# OpenCart Docker

  This repository should make it super simple to run [Opencart](http://www.opencart.com/) in docker containers.

  ## Installation
  1. Firstly, create a project folder and place the OpenCart files insde there.
  2. Add the opencart-docker files:
    - if you are using Git already you could add it as a submodule:

            $ git submodule add https://github.com/DockerIt/opencart-docker.git
    - if not, either copy the files or clone into the project directory:

            $ git clone https://github.com/DockerIt/opencart-docker.git
  3. It should look a bit like this:

          |-- project-root
          |   |-- opencart-docker
          |   |-- tests
          |   |-- upload
          |   |-- vendor
          |   |-- build.xml
          |   |-- changelog.md
          |   |-- etc...

  4. Copy the .env-example to .env and make any changes to the environment variables that you want.

          $ cp .env-example .env

  5. Now, in the opencart-docker folder, we want run it and serve Opencart. The simplest way is:

          $ docker-compose up -d apache mysql

  6. Finally we need to be able to access the site. access with https://localhost
      OR.
      We need to put the docker ip address into the HOSTS file.
      Simple. Docker is native so open `/etc/hosts` and add

            127.0.0.1 opencart.dev
