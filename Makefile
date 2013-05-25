DMD = $(shell which dmd)
SOURCES = $(shell find src -type f -name '*.d')
UNAME = $(strip $(shell uname))

ifeq ($(UNAME),Linux)
	LIBS = lib/posix
    PREFIX = lib
    EXT = a
else
ifeq ($(UNAME),Darwin)
	LIBS = lib/posix
    PREFIX = lib
    EXT = a
else
	#windows-y stuff
endif
endif

all:
	$(DMD) -lib $(SOURCES) -I$(LIBS) -of$(PREFIX)dna.$(EXT)

