# Makefile by Roberto M.F. (Roboe)
# https://github.com/WeAreFairphone/flashabe-zip_unroot

SOURCE       := ./src/
SOURCEFILES  := $(shell find $(SOURCE) 2> /dev/null | sort)

FLASHABLEZIP := ./build/unroot.zip
RELEASENAME  := "unroot_%Y-%m-%d.zip"


.PHONY: all build clean release
all: build

build: $(FLASHABLEZIP)
$(FLASHABLEZIP): $(SOURCEFILES)
	@echo "Building flashable ZIP..."
	@mkdir -pv `dirname $(FLASHABLEZIP)`
	@rm -f "$(FLASHABLEZIP)"
	@cd "$(SOURCE)" && zip \
	"../$(FLASHABLEZIP)" . \
	--recurse-path \
	--exclude '*.asc' '*.xml'
	@echo "Result: $(FLASHABLEZIP)"

clean:
	@echo Removing built files...
	rm -f "$(FLASHABLEZIP)"
	@# only remove dir if it's empty:
	@rmdir -p `dirname $(FLASHABLEZIP)` 2>/dev/null || true

release: $(FLASHABLEZIP)
	@mkdir -pv release
	@cp -v "$(FLASHABLEZIP)" "release/$$(date +$(RELEASENAME))"
