printf '\n### Docker build of poc-autoscaling started...\n'
cd ../
docker build . -t poc-autoscaling
printf '\n### Docker build of poc-autoscaling ended...\n'

printf '\n### Tagging docker image ...\n'
docker tag poc-autoscaling oseasjs/poc-autoscaling:1.0

printf '\n### Pushing docker image to remote docker repository...\n'
docker push oseasjs/poc-autoscaling:1.0

printf '\n### Docker image pushed successfully!'