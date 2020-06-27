docker build -t iamstefin/nginx-media:latest -t iamstefin/nginx-media:$SHA -f ./nginx-media/Dockerfile ./nginx-media

docker build -t iamstefin/django-deployment:latest -t iamstefin/django-deployment:$SHA -f ./myproject/Dockerfile ./myproject

docker push iamstefin/nginx-media:$SHA

docker push iamstefin/nginx-media:latest

docker push iamstefin/django-deployment:$SHA

docker push iamstefin/django-deployment:latest
