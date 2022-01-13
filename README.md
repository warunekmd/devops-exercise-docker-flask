# Simple Flask App

A Python Flask application that says "Hello, World!"

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

Read the SHA256 sum of each file's contents - it should match the `<id>`.

On screen, print out each item with this format:

```plain
name: <name>, id=<id>, shasum=<sha256sum of created file>
```
