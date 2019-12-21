# Install ACS
helm upgrade socium-acs --install alfresco-stable/alfresco-content-services \
--namespace=$KACS \
--version 2.0.0 \
--set registryPullSecrets=quay-registry-secret \
-f socium-acs-values.yaml
