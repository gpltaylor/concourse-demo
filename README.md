# Consource Tests
Basis tutorial for setting up and learning Concourse.

## Local
First stage is to build up the task and run them to ensure they're working correctly.
This means that any resource that the task need can be provided as command arguments.
Once this is working, the reourse can be pushed to their Git Repos.
```
fly -t tutorial execute -c tasks/taska.yml -i resource-app=../../react-router-workshop/02-params/ -i resource-script=./scripts/
```

## Pipeline
Once the tasks are working, they can be run from within Pipelines, however, Pipelines require
images and git repos as resources. This means that any tasks/scripts but be pushed before a Pipeline can run.

```
fly -t tutorial set-pipeline -p simple-tutorial -c pipeline.yml -n
fly -t tutorial unpause-pipeline -p simple-tutorial
fly -t tutorial trigger-job -w -j simple-tutorial/job-test-app
```