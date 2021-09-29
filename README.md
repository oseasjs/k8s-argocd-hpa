# POC Autoscaling on K8s using ArgoCD

## Pre-requisites globals

- [Minikube](https://minikube.sigs.k8s.io/docs/start/);
- [Argo CD](https://argo-cd.readthedocs.io/en/stable/);
- [NestJS](https://docs.nestjs.com/);

## Kubernetes Autoscaling Documentation

- https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/

- https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale-walkthrough/


## Useful Minikube Commands

### To start/stop kubernetes

```
minikube start
minikube dashboard
```

### To expose Kubernetes Dashboard

`minikube dashboard`

### To expose Kubernetes Loadbalance Services

`minikube tunnel`

## Useful Kubectl Commands

### To install ArgoCD and Metrics Server (run just once)

```
kubectl apply -f argo/argo-cd/argo-install.yaml
kubectl apply -f argo/argo-cd/metrics-server.yaml
```

### To expose ARGO Dashboard

`kubectl port-forward svc/argocd-server -n argocd 8080:443`

### To expose apply changes on files below /k8s-config folder

`kubectl apply -f argo/argo-cd/app.yaml`

## Example CURLs to force Autoscaling

### To force High CPU usage

```
curl --location --request GET 'http://localhost:3000/high-cpu/100000000'
```

### To force High Memory Consume

```
curl --location --request GET 'http://localhost:3000/high-memory/25000000'
```

<hr/>

## Issues on scaleDown strategy (not refreshing automatically)
https://github.com/kubernetes/kubernetes/issues/78761
https://github.com/kubernetes-sigs/metrics-server/issues/237


## Reference projects
https://github.com/antonputra/tutorials/tree/main/lessons/071
https://github.com/marcel-dempers/docker-development-youtube-series/tree/master/kubernetes/autoscaling

## Study Case

- [Primer on Autoscaling](https://medium.com/expedia-group-tech/autoscaling-in-kubernetes-a-primer-on-autoscaling-7b8f0f95a928)
- [Autoscaling Features and Use Cases](https://medium.com/expedia-group-tech/autoscaling-in-kubernetes-options-features-and-use-cases-c8a6ce145957)
- [Autoscaling When Use It](https://medium.com/expedia-group-tech/autoscaling-in-kubernetes-why-doesnt-the-horizontal-pod-autoscaler-work-for-me-5f0094694054)
