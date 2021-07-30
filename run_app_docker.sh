#!/bin/bash

export CONTRAST_CONFIG_PATH=/app/contrast_security.yaml
export CONTRAST__AGENT__LOGGER__STDOUT=true
export CONTRAST__AGENT__SERVICE_LOGGER__STDOUT=true
export CONTRAST__APPLICATION__NAME=djangonvTaskManager
export CONTRAST__ASSESS__ENABLE=true
export CONTRAST__PROTECT__ENABLE=false

python3 manage.py runserver 0.0.0.0:8000
