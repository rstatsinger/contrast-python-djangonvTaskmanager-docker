# django.nV Task Manager - Demo App for Contrast Security's Instrumentation-Based AppSec platform for Python - Easy Setup using Docker
=========

This is an intentionally vulnerable Python application. It includes vulnerabilities from the OWASP Top 10 and is intended to be used as an educational tool for developers and security professionals. Any maintainers are welcome to make pull requests.

This setup runs the application in a Docker container, isolating it from you environment.

## Prerequisites

Just git and docker

## Instructions
1. git clone this repo
2. Drop your contrast_security.yaml file for the Python agent into the project root directory
3. Edit the yaml file so that the **agent** stanza looks like this:

  agent: 
    logger:
      path: /tmp/contrastagent.log
      level: ERROR
    service: 
      logger: 
        path: /tmp/contrastagent.log
        level: ERROR
       host: 127.0.0.1
       port: 30555

4. build.sh
5. run.sh
6. Interact with the application at http://localhost:8000 and look for the **djangonvTaskManager** application in your Contrast account's UI
