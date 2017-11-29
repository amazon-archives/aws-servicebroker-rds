#!/bin/bash

function redirect-output {
    if ${LOCAL_CI}; then
  # If local CI don't output logs. Let the developer check them.
  exec 3>&1 4>&2 >/dev/null
    fi
}

function restore-output {
    if ${LOCAL_CI}; then
  # Restore stdout and stderr
  exec 1>&3 2>&4 3>&- 4>&-
    fi
}

function log-header {
    header=$1
    print-with-red "##### START ${header} ######"
}

function log-footer {
    footer=$1
    print-with-red "##### END ${footer} ######"
}

function wait-logs {
    log-header "wait for pods logs"
    cat /tmp/wait-for-pods-log
    log-footer "wait for pods logs"
}

function pod-logs {
    log-header "pod logs"
    oc get pods --all-namespaces
    wait-logs
    log-footer "pod logs"
}

function secret-logs {
    log-header "secrets logs"
    oc get secrets --all-namespaces | grep ${bind_credential_name}
    oc get secrets ${bind_credential_name} -o yaml -n default
    log-footer "secrets logs"
}

function podpreset-logs {
    log-header "podpreset logs"
    oc get podpresets -n default
    oc get pods $(oc get pods -n default | grep ${app_name} | awk $'{ print $1 }') -o yaml -n default
    pod-logs
    log-footer "podpreset logs"
}

function broker-logs {
    log-header "broker logs"
    oc logs $(oc get pods -o name -l service=asb --all-namespaces | cut -f 2 -d '/') -c asb -n ansible-service-broker
    log-footer "broker logs"
}

function catalog-logs {
    log-header "catlog logs"
    oc get serviceclasses --all-namespaces
    oc get instances --all-namespaces
    oc logs $(oc get pods -o name -l app=controller-manager --all-namespaces | cut -f 2 -d '/') -n service-catalog
    log-footer "catlog logs"
}

function print-all-logs {
    secret-logs
    podpreset-logs
    wait-logs
    broker-logs
    catalog-logs
}
