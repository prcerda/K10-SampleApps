kubectl apply -f stock-demo-namespace.yaml
kubectl apply -f postgresql-secret.yaml
kubectl apply -f postgresql-configmap.yaml
kubectl apply -f postgresql-svc.yaml
kubectl apply -f stock-demo-deployment.yaml
kubectl apply -f stock-demo-gatewaysvc.yaml
kubectl apply -f postgresql-ext-blueprint-singledb.yaml -n kasten-io
kubectl annotate configmap postgresql-configmap kanister.kasten.io/blueprint='postgresql-ext-deployment' --namespace=stock-demo