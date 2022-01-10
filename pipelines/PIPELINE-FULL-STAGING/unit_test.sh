#!/bin/bash

source todo-list-aws/bin/activate
set -x
export PYTHONPATH="${PYTHONPATH}:$(pwd)"
echo "PYTHONPATH: $PYTHONPATH"
export DYNAMODB_TABLE=todoUnitTestsTable
<<<<<<< HEAD
export ENDPOINT_OVERRIDE=http://dynamodb:8000
aws configure set default.region us-east-1
=======
>>>>>>> b9d4789d41fe8666c7d9b28f9932ce4fbba46ad7
python test/unit/TestToDo.py
pip show coverage
coverage run --include=src/todoList.py test/unit/TestToDo.py
coverage report
coverage xml
