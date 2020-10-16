# sample python code runner

# How to use
### image build and push
```
docker build -t dubaek/k8spysample:1.0 .
docker push dubaek/k8spysample:1.0
```

### create deploy on k8s
```
kubectl create -f k8spysample-deploy.yaml
```