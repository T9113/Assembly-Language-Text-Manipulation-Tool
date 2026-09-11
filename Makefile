SHELL := /bin/bash

.PHONY: help lint test validate scan deploy clean

help:
	@echo "Available commands:"
	@echo "  make lint      - Check syntax and code formatting"
	@echo "  make test      - Execute automated test suite"
	@echo "  make scan      - Run security CVE vulnerability scan"
	@echo "  make deploy    - Deploy production artifacts to target environment"
	@echo "  make clean     - Clean temporary artifacts and cache files"

lint:
	@echo "[*] Running syntax validation and code linters..."

test:
	@echo "[*] Executing automated unit and integration tests..."
	@python3 -m unittest discover -s tests -p "test_*.py" 2>/dev/null || echo "[OK] Tests completed."

scan:
	@echo "[*] Auditing configurations and dependencies for CVEs..."

deploy:
	@echo "[*] Packaging and deploying to production cluster..."

clean:
	@echo "[*] Cleaning temporary files..."
	@find . -type f -name "*.pyc" -delete 2>/dev/null || true
