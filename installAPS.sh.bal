#
helm install alfresco-incubator/alfresco-process-services --namespace=$APS_DESIREDNAMESPACE \
--version 0.1.5 \
--name igoraps \
--set alfresco-infrastructure.persistence.efs.dns="$EFS_SERVER" \
--set processEngine.image.repository="ymuwakki/solers-aps" \
--set processEngine.image.tag="1.9.0.5" \
--set adminApp.image.repository="ymuwakki/solers-aps-admin" \
--set adminAppimage.tag="1.9.0.5" \
--set alfresco-infrastructure.nginx-ingress.enabled=false \
--set license.secretName=licenseaps 
