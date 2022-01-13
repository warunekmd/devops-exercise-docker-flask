# Simple Flask App

A Python Flask application that says "Hello, World!"

## Goal

* "Dockerize" the application, providing an image and a configuration for
  running locally.
* Provide a script to retrieve data from application and perform basic parsing.

## Docker Exercise

* Provide a `Dockerfile` to build and run the application.
* Modify the application to replace _Hello, World!_ with an optional string set
  using an environment variable and defaulting to _Hello, World!_
* Provide a `docker-compose.yml` file to run the application and set a custom
  string using an environment variable.

The result should be the ability to navigate to <http://localhost:5000/> and see
the custom greeting.

## Scripting Exercise

Provide a script in a language or tool of your choice that will parse the data returned from
<http://localhost:5000/data> and create a file in a `files/` sub-directory named `<id>.txt`
with the _name_ as the contents of the file.
E.g. `files/3fc4ccfe745870e2c0d99f71f30ff0656c8dedd41cc1d7d3d376b0dbe685e2f3.txt`

Read the SHA256 sum of each file's contents - it should match the `<id>`.

On screen, print out each item with this format:

```plain
name: <name>, id=<id>, shasum=<sha256sum of created file>
```

## Submittal

Push your solution to your own repository on GitHub, GitLab, another public
repository, or provide an archive file (.zip) to the team.
