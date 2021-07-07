#!/bin/bash

function makedirs {
  mkdir -p ~/terraform/projects/${projectname}/$1/vpc
  mkdir -p ~/terraform/projects/${projectname}/$1/services/frontend-app
  mkdir -p ~/terraform/projects/${projectname}/$1/services/backend-app
  mkdir -p ~/terraform/projects/${projectname}/$1/data-storage/mysql
  mkdir -p ~/terraform/projects/${projectname}/$1/data-storage/redis
}

function makeglobaldirs {
  # devops management
  mkdir -p ~/terraform/projects/${projectname}/mgmt/vpc
  mkdir -p ~/terraform/projects/${projectname}/mgmt/services/bastion-host
  mkdir -p ~/terraform/projects/${projectname}/mgmt/services/jenkins
  # global
  mkdir -p ~/terraform/projects/${projectname}/global/iam
  mkdir -p ~/terraform/projects/${projectname}/global/s3

}

echo -n "Enter project name: "
read projectname

## Create staging Env
makedirs stage

## Create dev Env
makedirs dev

## Create prod Env
makedirs prod

## Create global Env
makeglobaldirs

## finish up by displaying our work
tree ~/terraform
