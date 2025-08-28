.PHONY: all c-projects python lint clean
all: c-projects
c-projects:
	@echo "Building C projects..."
	@$(MAKE) -C libs/cutils
	@$(MAKE) -C projects/wifi-frame-parser-c
	@$(MAKE) -C projects/nl80211-scanner
python:
	@echo "No Python tests yet."
lint:
	@echo "Add clang-format/ruff later."
clean:
	@$(MAKE) -C libs/cutils clean || true
	@$(MAKE) -C projects/wifi-frame-parser-c clean || true
	@$(MAKE) -C projects/nl80211-scanner clean || true
