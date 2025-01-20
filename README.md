# Cypress Docker

This example demonstrates how to run Cypress in a Docker container. It uses the official `cypress/included` image which contains all necessary dependencies.

This supports running both GUI and CLI versions from a Docker container.

It is important to give Docker permissions to access X11 using `$ xhost +local:docker` before running Cypress.

Run the tests using `bin/test` CLI command. See `bin/test --help` for options.

[info] When running Cypress GUI for the first time, it will ask you to select the project. Select e2e/cypress directory.

You might encounter an issue where the Cypress GUI window does not appear. This is most likely due to missing DISPLAY environment variable. If this happens, you can manually pass in the DISPLAY value `$ docker exec -e DISPLAY=$DISPLAY -it cypress-container cypress open`.
