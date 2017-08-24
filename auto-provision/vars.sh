#!/bin/bash

# AWS credentials
export aws_access_key=""
export aws_secret_key=""

# RDS params
export vpc_id="vpc-4d13ae2b"
export stack_identifier="autoprovision02"
export aws_region="us-west-2"
export availability_zones="us-west-2a,us-west-2b,us-west-2c"

# Automation variables
export openshift_namespace="default"

export app_name="hello-world"
export app_name_pretty="Hello World"
export app_service_class_name="dh-ansibleplaybookbundle-hello-world-apb-latest"

export aws_svc_name="rds-mysql"
export aws_svc_name_pretty="RDS MySQL"
export aws_svc_service_class_name="apb-push-ansibleplaybookbundle-rds-mysql-apb"

export bind_credential_name="hello-world-rds-mysql-binding"
