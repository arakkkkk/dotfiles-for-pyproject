test:
	docker-compose up -d
	docker-compose exec dotfiles-test curl -sf https://raw.githubusercontent.com/arakkkkk/dotfiles-for-pyproject/main/install.sh | sh -s

c:
	docker-compose exec dotfiles-test bash

down:
	docker-compose down --rmi all --volumes --remove-orphans

