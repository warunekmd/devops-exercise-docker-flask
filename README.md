# Michael Warunek's Edits

- Run `./launch.sh` to launch script

## Editor's note

- At this point I'm not sure if you're looking at my previous submission or this submission for the first time, but originally my thinking was to run this Python script `get-data.py` to parse the URL data results, but ultimately I chose to use `curl` with `jq` to retrieve the data from `http://127.0.0.1/data` for it's simplicity given the amount of time I had left. The results will output to a `results.txt` file at the end of the script run.

- On a further note, I would normally implement and include instructions for ASDF plug in control as well as activating a pipenv shell to work out of and writing more structured and comprehensive notes with step by step instructions for reproducing uniform results across different environments/systems, but I wanted to get something in on time for review before the interview. Thanks for the consideration and understanding. Happy to discuss it soon with you.

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
