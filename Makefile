.PHONY: dev-setup ## Install development dependencies
dev-setup:
	pip install -e ".[dev]"

.PHONY: install-dev
install-dev: dev-setup

.PHONY: format
format:
	black pylint_t2 setup.py

.PHONY: fmt
fmt:: format

.PHONY: build
build:
	python setup.py sdist bdist_wheel
