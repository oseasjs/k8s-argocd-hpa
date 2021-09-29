# POC Autoscaling on K8s using ArgoCD

## Documentation
https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/
https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale-walkthrough/

## Reference projects
https://github.com/antonputra/tutorials/tree/main/lessons/071
https://github.com/marcel-dempers/docker-development-youtube-series/tree/master/kubernetes/autoscaling

## Issues on scaleDown strategy (not refreshing automatically)
https://github.com/kubernetes/kubernetes/issues/78761
https://github.com/kubernetes-sigs/metrics-server/issues/237

## Study Case
https://medium.com/expedia-group-tech/autoscaling-in-kubernetes-a-primer-on-autoscaling-7b8f0f95a928
https://medium.com/expedia-group-tech/autoscaling-in-kubernetes-options-features-and-use-cases-c8a6ce145957
https://medium.com/expedia-group-tech/autoscaling-in-kubernetes-why-doesnt-the-horizontal-pod-autoscaler-work-for-me-5f0094694054

## Useful Minikube Commands

```
minikube start
minikube dashboard
minikube tunnel
minikube stop
```

## Useful Kubectl Commands

### To run once

```
kubectl apply -f argo/argo-cd/argo-install.yaml
kubectl apply -f argo/argo-cd/metrics-server.yaml
```

### To expose ARGO Dashboard

`
kubectl port-forward svc/argocd-server -n argocd 8080:443
`

### To expose apply changes on files below /k8s-config folder

`
kubectl apply -f argo/argo-cd/app.yaml
`