#!/bin/bash
#
helm upgrade socium-aps --install ./alfresco-process-services-deployment/helm/alfresco-process-services --namespace=$KAPS -f socium-aps-values.yaml
