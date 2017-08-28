#!/bin/bash

ACTION=$1
RESOURCE=$2
RESOURCE_NAME=$3
POLL_ATTEMPTS=${4:-100}
POLL_SLEEP=${5:-1}

RESOURCE_ERROR=true

# Wait for CloudFormation APB pod completion
if [ "${RESOURCE}" = "apb" ] && [ "${ACTION}" = "completed" ] && [ "${RESOURCE_NAME}" = "${aws_svc_name}" ]; then
  echo
  echo "Attempting to capture ${aws_svc_name_pretty} pod name..."
  # Capture CloudFormation APB pod name
  apb_pod_name=$(oc get pods -n ${openshift_namespace} -l apb-fqname=${aws_svc_service_class_name} --show-all=false | grep apb | awk '{ print $1 }' | head -n1)
  if [ -z "${apb_pod_name}" ]; then
	  echo "${aws_svc_name} pod doesn't appear to be running, aborting..."
	  RESOURCE_ERROR=true
  else
    echo "Captured ${aws_svc_name_pretty} APB pod name: ${apb_pod_name}"
    echo "Current time: $(date +"%H:%M")"
    echo

    for r in $(seq ${POLL_ATTEMPTS}); do
    	apb_pod_status=$(oc get pods -n ${openshift_namespace} | grep ${apb_pod_name} | awk '{ print $3 }')
    	if [ "${apb_pod_status}" = 'Completed' ]; then
        echo
  	    echo "${RESOURCE_NAME} ${RESOURCE} is completed at $(date +"%H:%M")."
  	    RESOURCE_ERROR=false
  	    break
    	fi
    	if [ "${apb_pod_status}" = 'Error' ]; then
  	    echo "${RESOURCE_NAME} ${RESOURCE} completed in error state."
  	    RESOURCE_ERROR=true
  	    break
    	fi
    	echo "Waiting for ${RESOURCE_NAME} ${RESOURCE} to complete... ${r}"
    	sleep ${POLL_SLEEP}
    done
	fi
# Wait for pod creation
elif [ "${RESOURCE}" = "pod" ] && [ "${ACTION}" = "create" ]; then
  for r in $(seq ${POLL_ATTEMPTS}); do
    pod=$(oc get pods -n ${openshift_namespace} | grep ${RESOURCE_NAME} | awk $'{ print $3 }')
    if [ "${pod}" = 'Running' ]; then
      echo "${RESOURCE_NAME} ${RESOURCE} is running"
      RESOURCE_ERROR=false
      break
    fi
    echo "Waiting for ${RESOURCE_NAME} ${RESOURCE} to be running"
    sleep ${POLL_SLEEP}
  done
# Wait for generic resource creation
elif [ "${ACTION}" = "create" ]; then
  for r in $(seq ${POLL_ATTEMPTS}); do
  	oc get ${RESOURCE} -n ${openshift_namespace} | grep ${RESOURCE_NAME}
  	if [ $? -eq 0 ]; then
	    echo "${RESOURCE_NAME} ${RESOURCE} has been created"
	    RESOURCE_ERROR=false
	    break
  	fi
  	echo "Waiting for ${RESOURCE_NAME} ${RESOURCE} to be created"
  	sleep ${POLL_SLEEP}
  done
# # Wait for generic resource deletion
elif [ "${ACTION}" = "delete" ]; then
  for r in $(seq ${POLL_ATTEMPTS}); do
  	oc get ${RESOURCE} -n ${openshift_namespace} | grep ${RESOURCE_NAME}
  	if [ $? -eq 1 ]; then
	    echo "${RESOURCE_NAME} ${RESOURCE} has been deleted"
	    RESOURCE_ERROR=false
	    break
  	fi
  	echo "Waiting for ${RESOURCE_NAME} ${RESOURCE} to be deleted"
  	sleep ${POLL_SLEEP}
  done
fi
