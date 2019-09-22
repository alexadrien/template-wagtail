install:
	docker-compose build
	make createadminuser

start:
	docker-compose up -d

createadminuser:
	docker-compose run back python manage.py createsuperuser

stop:
	docker-compose stop

uninstall:
	docker-compose down