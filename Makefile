DMD = $(shell which dmd)
SOURCES = $(shell find include/dna -type f -name '*.d')
UNAME = $(strip $(shell uname))

ifeq ($(UNAME),Linux)
	LIBS = lib/posix/
    PREFIX = lib
    LIBEXT = a
    OUTEXT = so
else
ifeq ($(UNAME),Darwin)
	LIBS = lib/posix/
    PREFIX = lib
    LIBEXT = a
    OUTEXT = so
else
	# windows-y stuff
    LIBEXT = lib
    OUTEXT = dll
endif
endif

# Derelict libraries
AL = $(LIBS)$(PREFIX)DerelictAL.$(LIBEXT)
ALURE = $(LIBS)$(PREFIX)DerelictALURE.$(LIBEXT)
FT = $(LIBS)$(PREFIX)DerelictFT.$(LIBEXT)
GL = $(LIBS)$(PREFIX)DerelictGL3.$(LIBEXT)
GLFW = $(LIBS)$(PREFIX)DerelictGLFW3.$(LIBEXT)
IL = $(LIBS)$(PREFIX)DerelictIL.$(LIBEXT)
OGG = $(LIBS)$(PREFIX)DerelictOGG.$(LIBEXT)
UTIL = $(LIBS)$(PREFIX)DerelictUtil.$(LIBEXT)
GLFW3 = $(LIBS)$(PREFIX)glfw3.$(LIBEXT)

LINK = -L$(AL) -L$(ALURE) -L$(FT) -L$(GL) -L$(GLFW) -L$(IL) -L$(OGG) -L$(UTIL) -L$(GLFW3)

all: clean
	mkdir build
	$(DMD) -shared $(SOURCES) -Iinclude $(LINK) -ofbuild/$(PREFIX)dna.$(OUTEXT)

static: clean
	$(DMD) -lib $(SOURCES) -Iinclude $(LINK) -ofbuild/$(PREFIX)dna.$(LIBEXT)

clean:
	rm -rf build

