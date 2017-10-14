FROM ansibleplaybookbundle/apb-base
MAINTAINER Ansible Playbook Bundle Community

RUN yum -y install python-boto3 && yum clean all

COPY roles /opt/ansible/roles
COPY playbooks /opt/apb/actions

LABEL "com.redhat.apb.spec"=\

USER apb
