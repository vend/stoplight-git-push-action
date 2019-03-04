# Stoplight Git Push Action

This action expects to find a `main.hub.yml` file in the root of the repository and on every push it will inspect this file for changes. If the file has changed it will be pushed to the Git repo exposed by the Stoplight project.
