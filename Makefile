SLIDES_SRC=$(wildcard slides/*.md)
BUILD=build

.PHONY: clean compile
clean:
	rm -rf $(BUILD)

compile:
	@mkdir -p $(BUILD)
	@echo merged-slides > $(BUILD)/deck.md

