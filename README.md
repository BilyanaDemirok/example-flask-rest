# example-flask-rest
A minimal flask rest API with a Make file. It returns data in JSON format.

## Development
### Python virtual environment
Used [pyenv](https://github.com/pyenv/pyenv) with [pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv) plugin.
```shell
pyenv virtualenv 3.8.5 example-flask    # create a virtual environment with python 3.8.5
pyenv activate example-flask            # activate given virtual environment
pyenv deactivate example-flask          # deactivate given virtual environment  
```
### Environment
- Dockerfile: Define the image on Alpine Linux.
- docker-compose.yml: Define the services

## Make targets
- Run application with logs:
```shell
make run
```
Application will be available on http://127.0.0.1:5000
- Stop application:
```shell
make stop
```
- Remove containers:
```shell
make clean
```
- For other make targets:
```shell
make help
```

### Endpoints:
Server: http://127.0.0.1:5000
- `/`:
    - `GET`: Returns a static message.
    - `POST`: Returns the request body in the response.
- `GET /square/<number>`: Returns the square of a given number.    
- `GET /greeting/<name>`: Returns a greeting message for the given name.
    

