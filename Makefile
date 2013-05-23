DMD = $(shell which dmd)
SOURCES = $(shell find src -type f -name '*.d')

all:
	$(DMD) -lib $(SOURCES) -ofdna.lib

