.PHONY: help build.web start stop clean shell

default: help

build.web: ## Build the web container
	@docker-compose build web

help: ## Show this help
	@echo
	@fgrep -h " ## " $(MAKEFILE_LIST) | fgrep -v fgrep | sed -Ee 's/([a-z.]*):[^#]*##(.*)/\1##\2/' | column -t -s "##"
	@echo

start: ## Run the application locally in the background
	@docker-compose up --build --detach web

stop: ## Stop the application
	@docker-compose stop

clean: ## Remove containers and delete all data from the local volumes
	@docker-compose down --remove-orphans --volumes

shell: ## Shell into a development container
	@docker-compose build web
	@docker-compose run --rm web sh

logs: ## Show the application logs
	@docker-compose logs --follow --tail=1000 web

run: start logs ## Run the application locally