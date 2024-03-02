#!/bin/bash

WIN_PATH='./'
LINUX_PATH='./'

# echo $PROJECT_PATH

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  # Linux
  PROJECT_PATH=$LINUX_PATH
  cd $PROJECT_PATH
  echo $(PWD)
  source .venv/bin/activate
  python src/main.py 2>&1 | tee -a logs/main-$(date +"%Y%m%d-%H%M").log
  deactivate
elif [[ "$OSTYPE" == "cygwin" ]] || [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "win32" ]]; then
  # Windows
  PROJECT_PATH=$WIN_PATH
  cd $PROJECT_PATH
  echo $(PWD)
  source .venv/Scripts/activate
  python src/main.py 2>&1 | tee -a logs/main-$(date +"%Y%m%d-%H%M").log
  deactivate
fi
