
### Clone repository

```bash
git clone git@github.com:AndriyKalashnykov/spring-microservices-k8s.git
```
## minikube start 
```bash
minikube start
```
### Start Kubernetes cluster

```bash
cd ./scripts/
./start-cluster.sh
```

### Configure Kubernetes cluster

```bash
cd ./scripts/
./setup-cluster.sh
```

### Deploy application to Kubernetes cluster

```bash
cd ./scripts/
./install-all.sh
```

### Polulate test data

```bash
cd ./scripts/
./populate-data.sh
```
## minikube dashboard
```bash
minikube dashboard
```
### Observe service logs

```bash
cd ./scripts/
./user-log.sh
```

### Open Swagger UI web interface

```bash
cd ./scripts/
./gateway-open.sh
```

### Undeploy application from Kubernetes cluster

```bash
cd ./scripts/
./delete-all.sh
```

### Delete Application specific Kubernetes cluster configuration (namespaces, clusterRole, etc.)

```bash
cd ./scripts/
./destroy-cluster.sh
```

### Stop Kubernetes cluster

```bash
cd ./scripts/
./stop-cluster.sh
```
```bash
 sudo chmod 777 -R  scripts
```

#### link swagger

http://127.0.0.1:8080/swagger-ui.html

###  user
http://127.0.0.1:8080/user

```bash
dos2unix start-cluster.sh 
```
```bash
dos2unix install-db.sh
```
```bash
dos2unix build-app.sh
```
```bash
dos2unix set-env.sh
```
```bash
dos2unix start-cluster.sh
```
```bash
dos2unix delete-app.sh
```
```bash
dos2unix delete-all.sh
```
```bash
kubectl get pods --all-namespaces
```
```bash to collect the logs from the pod
kubectl logs <pod_name> -n <namespace_name>
```
```bash output the logs to a file
kubectl logs <pod_name> -n <namespace_name> > broken-pod.log
```

# microservicesFignclient
