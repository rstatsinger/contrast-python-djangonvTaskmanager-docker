# django.nV Task Manager - Demo App for Contrast Security's Instrumentation-Based AppSec platform for Python - Easy Setup using Docker
=========

This is an intentionally vulnerable Python application. It includes vulnerabilities from the OWASP Top 10 and is intended to be used as an educational tool for developers and security professionals. Any maintainers are welcome to make pull requests.

This setup runs the application in a Docker container, isolating it from your environment. The application is also instrumented with Contrast Security's Python instrumentation for embedded continuous application security.

## Prerequisites

A Contrast Security account, git, and docker

## Instructions
1. git clone this repo
2. Drop your contrast_security.yaml file for the Python agent into the project root directory
3. build.sh
4. run.sh
5. Interact with the application at http://localhost:8000 and look for the **djangonvTaskManager** application in your Contrast account's UI
