SLIDES_SRC=$(wildcard slides/*.md)
BUILD=build

.PHONY: clean compile lint
clean:
	rm -rf $(BUILD)

compile:
	@mkdir -p $(BUILD)
	@for f in $(SLIDES_SRC); do cat $$f; echo; echo "---"; done > $(BUILD)/deck.md
lint:
	@test -n "$(SLIDES_SRC)"



watch:
	@echo rerun compile manually
