# spring-mvc-mysql-demo-k8s
1. **Build the WAR** 
```bash
cd spring-mvc-mysql-demo-k8s
mvn clean package
```
2. **Build Docker Image**
```bash
docker build -t spring-mvc-mysql-demo-k8s:1.0 .
```
3. **Load Docker Image into kind**
```bash
kind load docker-image spring-mvc-mysql-demo-k8s:1.0 --name dev-cluster
```
4. **Create ConfigMap for DB Init Script**
**This wraps db/init.sql into a ConfigMap so MySQL can auto-create users table.**
```bash
kubectl create configmap mysql-init-script \
  --from-file=init.sql=db/init.sql \
  -o yaml --dry-run=client > mysql-init-configmap.yaml

kubectl apply -f mysql-init-configmap.yaml
```
5. **Deploy MySQL in Kubernetes**
```bash
kubectl apply -f k8s/mysql.yaml
```
6. **Deploy app in Kubernetes**
```bash
kubectl apply -f k8s/app.yaml
```
7. **check the browser**
```bash
http://localhost:8085/spring-mvc-mysql-demo-k8s
```
