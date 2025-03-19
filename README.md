### Создание облачнйо инфраструктуры

Сервисный аккаунт
![alt text](img/image.png)

![alt text](img/image-1.png)

s3 bucket

![alt text](img/image-2.png)

![alt text](img/image-3.png)

тф конфиг с с сохранением стейта в подгтовленном бакете

![alt text](img/image-4.png)

vpc

![alt text](img/image-5.png)

terraform apply destroy -auto-approve отрабатывают

### Создание K8S кластера

Подготовка нод

![alt text](img/image-6.png)

установка k8s кластера, через ansible роль, с подготовленным через терраформ конфиг темплейтом для передачи адресов вм


![alt text](img/image-7.png)

создан конфиг и проверена работоспособность кластера.

![alt text](img/image-8.png)


### Создание тестового приложения

Отдельный репозиторий с nginx и dockerfile

https://github.com/Drewplonq/graduateapp


образ собран и  запушен в докерхаб

https://hub.docker.com/repository/docker/plonqnet/graduateapp/general

![alt text](img/image-9.png)


### Подготовка cистемы мониторинга и деплой приложения
