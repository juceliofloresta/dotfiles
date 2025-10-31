.PHONY: help setup config

# Default target
help:
	@echo "Available commands:"
	@echo "make setup   - Install dependencies (Homebrew + packages)"
	@echo "make config  - Create symlinks using Stow"

setup:
	@if ! command -v brew >/dev/null 2>&1; then \
		echo "Installing Homebrew..."; \
		/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; \
	else \
		echo "Homebrew already installed"; \
	fi
	@if [ -f "homebrew/Brewfile" ]; then \
		echo "Installing packages using brew"; \
		brew bundle --file=homebrew/Brewfile; \
	fi
	@echo "Setup complete!"

config:
	@echo "Creating symlinks..."
	@stow -R --target=$(HOME)/.config config
	@stow -R --target=$(HOME)/. home

