.PHONY: update

update:
	# Update the docker stack
	@echo 'Updating configuration files'
	@echo '============================'
	#git submodule update --recursive --remote
	@git pull
	@echo ''

	# Update images
	@echo 'Downloading images'
	@echo '====================='
	docker compose pull
	@echo ''

	# Stop last stack, delete it, and start the new one
	@echo 'Shutting down servers'
	@echo '====================='
	docker compose down
	@echo ''

	@echo 'Deleting images'
	@echo '==============='
	docker compose rm -f
	@echo ''

	@echo 'Start new images'
	@echo '================'
	docker compose up -d --remove-orphans
	@echo ''

	@echo 'Your stack has been correctly updated.'
	@echo ''