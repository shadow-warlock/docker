#!/bin/bash

mkdir "$1"
cp -r project_creator/docker "$1"
cp -r project_creator/project "$1"
cp -r project_creator/docker-compose.yaml "$1"
rm "$1"/project/backend/.root
rm "$1"/project/frontend/.root
