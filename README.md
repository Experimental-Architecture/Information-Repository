# Information-Repository
Testing purposes

```

References
http://odewahn.github.io/docker-jumpstart/building-images-with-dockerfiles.html
https://docs.docker.com/engine/reference/run/#name-name
https://www.digitalocean.com/community/tutorials/docker-explained-using-dockerfiles-to-automate-building-of-images
https://stackoverflow.com/questions/1559955/host-xxx-xx-xxx-xxx-is-not-allowed-to-connect-to-this-mysql-server
https://github.com/kubernetes/minikube/releases
http://192.168.1.33:8001/api/v1/namespaces/kube-system/services/http:kubernetes-dashboard:/proxy/#!/overview?namespace=default

Docker build images
$ docker build -t "simple_flask:dockerfile" .

Docker run images (+creates containers)
$ docker run --name [image name] -e AUTHOR="[username]" -d -P [repo-name/image-name]

Docker ports (where containers are hosted)
$ docker ports [image name]

Exporting from Docker
$ docker exec -it database-service mysqldump -p -uroot -ppassword db_drupal > drupal.sql


# remove the token ...
KUBE_EDITOR="nano" kubectl edit secret $(kubectl get secrets --namespace=kube-system -o jsonpath='{.items[0].metadata.name}') --namespace=kube-system

# get pods
kubectl get pods --all-namespaces


1. Install Docker
2. Install Composer
3. Install Kubernetes (minikube for local installation)


https://wadatabase.azurewebsites.net/
https://wasolrservice.azurewebsites.net
https://waquerytoolservice.azurewebsites.net
https://wadrupalservice.azurewebsites.net


kubectl proxy &
ssh -R 30000:127.0.0.1:8001 $USER@192.168.0.20
http://192.168.0.20:30000




https://www.techrepublic.com/article/how-to-quickly-install-kubernetes-on-ubuntu/
https://kubernetes.io/docs/setup/independent/create-cluster-kubeadm/


 export KUBECONFIG=$HOME/.kube/admin.conf
```


Please view the Wiki for this project
https://github.com/Services-Sandbox/Information-Repository/wiki

kubectl create clusterrolebinding cluster-system-anonymous --clusterrole=cluster-admin --user=system:anonymous


https://192.168.1.89:6443/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#!/login

kubectl create clusterrolebinding kubernetes-dashboard --clusterrole=cluster-admin --user=system:serviceaccount:kube-system:kubernetes-dashboard


sudo ip addr flush enp0s25
sudo systemctl restart networking.service


``` --pod-network-cidr=10.244.0.0/16 ```



Kubernetes Issues
The pods in kubernetes are in pending state when we execute kubectl get pods
Execute the following command to see the root cause:
kubectl get events
You will see output as follows:
LAST SEEN FIRST SEEN COUNT NAME KIND SUBOBJECT TYPE REASON SOURCE MESSAG E
1m 14h 3060 hello-nginx-5d47cdc4b7-8btwf.14ecd67c4676131c Pod Warning FailedScheduling default-scheduler No nod es are available that match all of the predicates: PodToleratesNodeTaints (1).This error usually comes when we try to create pod on the master node:
Execute the following command:
kubectl taint nodes <nodeName> node-role.kubernetes.io/master:NoSchedule-
 
 Open Source Cloud Service (self-host)
 - OpenStack
 
 Version Control
 - GitHub
 - GitLab
 
 Identity Management
 - Identity Server
 
 Testing
 - Lint
 
 Testing (Security)
 - ZAP
 - Arachni
 - Vega
 
 Tutorial Guide
 - IntroJS
 
 Front End Languages
 - Vuetify
 - React
 - Java
 - Swift
 
 Back End Languages
 - C#
 - Python
 - PHP
 
 Database
 - MySQL
 - MongoDB
 
 Back End / Database Layer
 - GraphQL / Apollo
 
 Back End 3rd Party
 - Apache Solr
 - Elastic Search
 
 
