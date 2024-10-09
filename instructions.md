# Instructions for the Test Project

### Create a enviroment implementing docker compose with 4 services.

* Laravel Application
* Nginx
* MySQL
* random http docker image ()

__Laravel image:__ must implement a alpine docker image, needs to connect to mysql, the root path must retrieve some register from the database to assert database connection. This image must communicate implementing php-fpm with nginx. Optional: The start script must automatic create the migrations and seed if this is not ready and then start the fpm server

__Nginx:__ All the request from the domain devops.test must be attended by the laravel service, except the path /thiio this must proxy to the random http docker image service.

__Optional:__ if the request arrive with other domain this must be redirected to devops.test

__Random HTTP Docker Image (Optional):__ This service must implement a docker compose profile with the name of your prefence. Its importante that docker compose up can start without this random http service, but when you execute docker compose --profile random up now the path /thiio must response the questions

Create a file `README.md` with the instrucctions of how to run the application.

### Deliverables
* A GitHub repository containing the complete source code.
* A README file with setup instructions, including environment setup, database configuration, and how to run tests.
* Reply to it-candidates@thiio.com with a link for the repository in GitHub, a copy of your most updated Resume (Curriculum Vitae), and a cover letter (Optional).

Deadline:
The candidate has 7 days from the date of assignment to submit the completed project.
