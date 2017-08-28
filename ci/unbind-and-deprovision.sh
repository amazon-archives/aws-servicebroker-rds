#!/bin/bash

CUR_DIR="$(dirname "${BASH_SOURCE}")"
BASH_DIR="${CUR_DIR}/bash"

# Load vars for customizing CI run per application/service
source "${CUR_DIR}/vars.sh"

# Delete binding
oc delete bindings.v1alpha1.servicecatalog.k8s.io ${bind_credential_name} -n ${openshift_namespace}
$BASH_DIR/wait-for-resource.sh delete bindings.v1alpha1.servicecatalog.k8s.io ${bind_credential_name}
# Delete service instances
oc delete instance ${app_name} -n ${openshift_namespace}
oc delete instance ${aws_svc_name} -n ${openshift_namespace}
# Wait for hello-world pod to terminate
$BASH_DIR/wait-for-resource.sh delete pod ${app_name}
# Wait for RDS MySQL deprovision to complete
$BASH_DIR/wait-for-resource.sh completed apb ${aws_svc_name} 500 5
