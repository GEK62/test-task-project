#!/bin/bash

echo "Building Docker image"

docker build -t gek62/test-task-project .

echo "Pushing Docker image to remote repository"

docker push gek62/test-task-project

echo "Deploying helm chart and creating namespace for kubernetes resources"

helm upgrade --install --force --namespace gek-project-prod --create-namespace gek-project .

echo "Done!"