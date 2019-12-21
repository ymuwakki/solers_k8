helm upgrade socium-acs --install alfresco-stable/alfresco-content-services \
helm install stable/nginx-ingress \
--version 0.14.0 \
--set controller.scope.enabled=true \
--set controller.scope.namespace=$KACS \
--set rbac.create=true \
--set controller.config."force-ssl-redirect"=\"true\" \
--set controller.config."server-tokens"=\"false\" \
--set controller.service.targetPorts.https=80 \
--set controller.service.annotations."service\.beta\.kubernetes\.io/aws-load-balancer-backend-protocol"="http" \
--set controller.service.annotations."service\.beta\.kubernetes\.io/aws-load-balancer-ssl-ports"="https" \
--set controller.service.annotations."service\.beta\.kubernetes\.io/aws-load-balancer-ssl-cert"=$AWS_CERT_ARN \
--set controller.service.annotations."external-dns\.alpha\.kubernetes\.io/hostname"="$APS_DESIREDNAMESPACE.dev.alfresco.me" \
--set controller.service.annotations."service\.beta\.kubernetes\.io/aws-load-balancer-ssl-negotiation-policy"=$AWS_CERT_POLICY \
--set controller.publishService.enabled=true \
--namespace $APS_DESIREDNAMESPACE
