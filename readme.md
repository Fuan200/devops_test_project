# Test Project

This test project is a multi-service environment built using Docker and Docker Compose, featuring a Laravel-based web application, Nginx for serving requests, MySQL for database management, and a custom HTTP service that is a simple Python with Flask.

### Prerequisistes

* Docker
* Docker-compose
* Configure the file `hosts`

#### Configure the hosts file

* On Linux/MacOS, edit the file `/etc/hosts`:

```
sudo vim /etc/hosts
```

* On Windows, edit the file `C:\Windows\System32\drivers\etc\hosts`

Add the following line at the of the file:

```
127.0.0.1 devops.test
```

### Run the project

1. Clone this repository:

``` bash
git clone git@github.com:Fuan200/devops_test_project.git
```

2. Change to the project directory

``` bash
cd devops_test_project
```

3. Run:

``` bash
docker-compose up
```

4. You can open a browser and navigate to `http://devops.test` to home page to Laravel.



## Author

:blue_heart: **Juan Díaz** - [Fuan200](https://github.com/Fuan200)