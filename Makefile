#
# Makefile for managing Docker Compose services.
# This Makefile includes targets for building, starting, stopping, and cleaning Docker services.
# It ensures that necessary dependencies are installed and Docker images are built with specified options.
#

#
# Makefile targets
#
ALL=all
DOWN=down
CLEAN=clean
BUILD_DEPENDS=build-depends
BUILD=build
UP=up
LOGS=logs
OPEN=open
HELP=help
START=start

#
# Docker Compose service name
#
COMPOSE_SERVICE_NAME ?= mkdocs-material

#
# Docker Compose service down timeout
#
COMPOSE_DOWN_TIMEOUT ?= 30

#
# Docker Compose down options
#
COMPOSE_DOWN_OPTIONS ?= --timeout $(COMPOSE_DOWN_TIMEOUT) --rmi all --volumes

#
# Docker Compose build options
#
COMPOSE_BUILD_OPTIONS ?= --pull --no-cache

#
# Docker Compose up options
#
COMPOSE_UP_OPTIONS ?= --build --force-recreate --pull always --detach

#
# Docker Compose logs options
#
COMPOSE_LOGS_OPTIONS ?= --follow

#
# Build dependencies
#
DEPENDENCIES=docker docker-compose

#
# Extract base FROM image from Dockerfile
#
FROM_IMAGE=$(shell awk '/^FROM / { print $$2 }' docker/Dockerfile | sed 's/:.*//' | head -n 1)

#
# Targets that are not files (i.e. never up-to-date); these will run every
# time the target is called or required.
#
.PHONY: $(ALL) $(DOWN) $(CLEAN) $(BUILD_DEPENDS) $(BUILD) $(UP) $(LOGS) $(OPEN) $(HELP) $(START)

#
# $(ALL): Default makefile target. Builds and starts the service stack.
#
$(ALL): $(UP)

#
# $(BUILD_DEPENDS): Ensure build dependencies are installed.
#
$(BUILD_DEPENDS):
	$(foreach exe,$(DEPENDENCIES), \
		$(if $(shell which $(exe) 2> /dev/null),,$(error "No $(exe) in PATH")))

#
# $(DOWN): Stops containers and removes containers, networks, volumes, and images created by up.
#
$(DOWN): $(BUILD_DEPENDS)
	@echo "\nStopping service $(COMPOSE_SERVICE_NAME)"
	docker-compose down $(COMPOSE_DOWN_OPTIONS)

	@for i in `docker images -aq "$(FROM_IMAGE)"`; do \
		echo "Removing image $$i"; \
		docker rmi -f "$$i" || true; \
	done

#
# $(BUILD): Builds the service stack.
#
# Dependencies: $(BUILD_DEPENDS) - Ensure build dependencies are installed.
#
$(BUILD): $(BUILD_DEPENDS)
	@echo "\nBuilding service $(COMPOSE_SERVICE_NAME)"
	docker-compose build $(COMPOSE_BUILD_OPTIONS) $(COMPOSE_SERVICE_NAME)

#
# $(UP): Builds, (re)creates, and starts containers for services.
#
$(UP): $(BUILD_DEPENDS)
	@echo "\nStarting service $(COMPOSE_SERVICE_NAME)"
	HOST_WIKI_PATH=${PWD} docker-compose up $(COMPOSE_UP_OPTIONS)

#
# $(LOGS): View output from containers.
#
$(LOGS):
	@echo "\nGetting logs for service $(COMPOSE_SERVICE_NAME)"
	docker-compose logs $(COMPOSE_LOGS_OPTIONS)

#
# $(OPEN): Opens the service site in the default web browser.
#
$(OPEN):
	@echo "\nOpening $(COMPOSE_SERVICE_NAME) site in default browser"
	open "http://localhost:`docker-compose port $(COMPOSE_SERVICE_NAME) 8000 | cut -d: -f2`"

#
# $(HELP): Print help information.
#
$(HELP):
	@echo "Usage: make [TARGET]"
	@echo ""
	@echo "Targets:"
	@echo "  $(ALL)             - Builds and starts the service stack."
	@echo "  $(BUILD_DEPENDS)   - Ensures build dependencies are installed."
	@echo "  $(DOWN)            - Stops and removes containers, networks, volumes, and images."
	@echo "  $(CLEAN)           - Alias for $(DOWN)."
	@echo "  $(BUILD)           - Builds the service stack."
	@echo "  $(UP)              - Builds, (re)creates, and starts containers for services."
	@echo "  $(START)           - Alias for $(UP)."
	@echo "  $(LOGS)            - Shows logs for the service."
	@echo "  $(OPEN)            - Opens the service site in the default web browser."
	@echo "  $(HELP)            - Displays this help message."

#
# Alias for clean
#
$(CLEAN): $(DOWN)

#
# Alias for up
#
$(START): $(UP)
