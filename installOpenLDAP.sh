#!/bin/bash
#
helm upgrade socium-ldap --install stable/openldap \
--set replicaCount=1 \
--set adminPassword=admin \
--set configPassword=admin \
--set test.enabled="true" \
--namespace=$KAPS 
