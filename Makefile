SLIDES_SRC=$(wildcard slides/*.md)
BUILD=build

.PHONY: clean compile
clean:
	rm -rf $(BUILD)

compile:
	@mkdir -p $(BUILD)
	@for f in $(SLIDES_SRC); do cat $$f; echo; done > $(BUILD)/deck.md
