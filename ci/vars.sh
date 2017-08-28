#!/bin/bash

# AWS params
export aws_access_key=""
export aws_secret_key=""
export vpc_id=""

# RDS params
export stack_identifier="autoprovision00"
export aws_region="us-west-2"
export availability_zones="us-west-2a,us-west-2b,us-west-2c"

# OpenShift params
export openshift_namespace="default"

# Automation variables
export app_name="hello-world"
export app_name_pretty="Hello World"
export app_service_class_name="dh-ansibleplaybookbundle-hello-world-apb-latest"

export aws_svc_name="rds-mysql"
export aws_svc_name_pretty="RDS MySQL"
export aws_svc_service_class_name="apb-push-ansibleplaybookbundle-rds-mysql-apb"

export bind_credential_name="hello-world-rds-mysql-binding"
