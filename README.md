# Michael Warunek's Edits

- Run `./launch.sh` to launch script


## Editor's notes##

- I spent my final minutes trying to run a Python script on the nginx container and even though I was able to successfully add the script file that I wanted without
needing a Dockerfile for the service -- I concluded that it would be a bit longer of a logistical undertaking and testing this as far as tonight. I do my script
would have worked however had I had a Python3 bin reference on that container.

- You will note that my script does perform a simple curl command at the end just to retrieve that data on the endpoint, letting me know that it can successfully
do that after a successful launch script

- On a further note, if I had more time I would probably set this repo up with ASDF plug in control as well as activating a pipenv shell to work out of but my time
seems to be falling short to flesh that out.

# Simple Flask App

A Python Flask application that says "Hello, World!"

## Goal

* "Dockerize" the application, providing an image and a configuration for
  running locally with Docker Compose.
* Provide a script to retrieve data from application and perform basic parsing.
* Provide a reverse proxy configuration.

## Docker Exercise

* Provide a `Dockerfile` to build and run the application.
* Modify the application to replace _Hello, World!_ with an optional string set
  using an environment variable and defaulting to _Hello, World!_
* Provide a `docker-compose.yml` file to run the application and set a custom
  string using an environment variable.

This should result in the ability to navigate to <http://localhost:5000/> and see
the custom greeting.

## Scripting Exercise

Provide a script or code in a language or tool of your choice that will parse
the data returned from <http://localhost:5000/data> and create a file in a
`files/` sub-directory named `<id>.txt` with the _name_ as the contents of the
file.
E.g. `files/3fc4ccfe745870e2c0d99f71f30ff0656c8dedd41cc1d7d3d376b0dbe685e2f3.txt`

Note: The SHA256 sum of each file's contents (`<name>`) should match the `<id>`.

## Reverse Proxy Configuration

Provide a minimal reverse proxy configuration for the application. This can be anything -
an Nginx, Apache, or Traefik config, a Terraform, CloudFormation, or CDK
configuration for AWS Load Balancing, etc.

It does not have to be implemented and functional in this exercise.

Idea: Try the [nginx](https://hub.docker.com/_/nginx) or
[traefik](https://hub.docker.com/_/traefik) Docker image ran from the same
Docker Compose file as the application.

## Submittal

Push your solution to your own repository on GitHub, GitLab, another public
repository, or provide an archive file (.zip) to the team.
