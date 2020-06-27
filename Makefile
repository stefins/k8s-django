DJANGO_IMAGE := iamstefin/django-deployment
NGINX_IMAGE := iamstefin/nginx-media
test:
	true

build-image:
	docker build -t $(DJANGO_IMAGE):latest .
	docker build -t $(NGINX_IMAGE):latest .
	docker build -t $(DJANGO_IMAGE):$SHA .
	docker build -t $(NGINX_IMAGE):$SHA .

push-image:
	docker push $(DJANGO_IMAGE):latest
	docker push $(DJANGO_IMAGE):$SHA
	docker push $(NGINX_IMAGE):latest
	docker push $(NGINX_IMAGE):$SHA


.PHONY: build-image push-image test
