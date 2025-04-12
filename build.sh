ECR_REGISTRY="199019422940.dkr.ecr.us-east-1.amazonaws.com"
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $ECR_REGISTRY
docker build -t ativ3 .
docker tag ativ3:latest $ECR_REGISTRY/ativ3:latest
docker push $ECR_REGISTRY/ativ3:latest