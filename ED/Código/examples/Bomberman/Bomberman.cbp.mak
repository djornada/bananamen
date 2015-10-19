#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

CC = gcc
CXX = g++
AR = ar
LD = g++
WINDRES = windres

INC = -I../../lib/CGF/include -I../../lib/CGF/include/tmxloader -I../../lib/CGF/include/pugixml -I../../lib/Box2D-2.3.0/include -I../../lib/SFML-2.2/include
CFLAGS = -std=c++11
RESINC = 
LIBDIR = -L../../lib
LIB = 
LDFLAGS = 

INC_DEBUG_LINUX = $(INC)
CFLAGS_DEBUG_LINUX = $(CFLAGS) -g
RESINC_DEBUG_LINUX = $(RESINC)
RCFLAGS_DEBUG_LINUX = $(RCFLAGS)
LIBDIR_DEBUG_LINUX = $(LIBDIR) -L../../lib/Box2D-2.3.0/lib-Linux64 -L../../lib/SFML-2.2/lib-Linux64
LIB_DEBUG_LINUX = $(LIB)-lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio -lBox2D -lCGF-Linux -llibz
LDFLAGS_DEBUG_LINUX = $(LDFLAGS)
OBJDIR_DEBUG_LINUX = ../../bin
DEP_DEBUG_LINUX = 
OUT_DEBUG_LINUX = ../../bin/Bomberman

INC_RELEASE_LINUX = $(INC)
CFLAGS_RELEASE_LINUX = $(CFLAGS) -O2
RESINC_RELEASE_LINUX = $(RESINC)
RCFLAGS_RELEASE_LINUX = $(RCFLAGS)
LIBDIR_RELEASE_LINUX = $(LIBDIR) -L../../lib/Box2D-2.3.0/lib-Linux64 -L../../lib/SFML-2.2/lib-Linux64
LIB_RELEASE_LINUX = $(LIB)-lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio -lBox2D -lCGF-Linux -llibz
LDFLAGS_RELEASE_LINUX = $(LDFLAGS) -s
OBJDIR_RELEASE_LINUX = ../../bin
DEP_RELEASE_LINUX = 
OUT_RELEASE_LINUX = ../../bin/Bomberman

INC_DEBUG_WINDOWS = $(INC)
CFLAGS_DEBUG_WINDOWS = $(CFLAGS) -g
RESINC_DEBUG_WINDOWS = $(RESINC)
RCFLAGS_DEBUG_WINDOWS = $(RCFLAGS)
LIBDIR_DEBUG_WINDOWS = $(LIBDIR) -L../../lib/Box2D-2.3.0/lib-Windows-CB -L../../bin -L../../lib
LIB_DEBUG_WINDOWS = $(LIB)-l../../bin/sfml-graphics-2.dll -l../../bin/sfml-window-2.dll -l../../bin/sfml-system-2.dll -l../../bin/sfml-audio-2.dll -l../../bin/CGF-Windows.dll -lBox2D
LDFLAGS_DEBUG_WINDOWS = $(LDFLAGS)
OBJDIR_DEBUG_WINDOWS = ../../bin
DEP_DEBUG_WINDOWS = 
OUT_DEBUG_WINDOWS = ../../bin/Bomberman

INC_RELEASE_WINDOWS = $(INC)
CFLAGS_RELEASE_WINDOWS = $(CFLAGS) -O2
RESINC_RELEASE_WINDOWS = $(RESINC)
RCFLAGS_RELEASE_WINDOWS = $(RCFLAGS)
LIBDIR_RELEASE_WINDOWS = $(LIBDIR) -L../../lib/Box2D-2.3.0/lib-Windows-CB -L../../bin
LIB_RELEASE_WINDOWS = $(LIB)-l../../bin/sfml-graphics-2.dll -l../../bin/sfml-window-2.dll -l../../bin/sfml-system-2.dll -l../../bin/sfml-audio-2.dll -l../../bin/CGF-Windows.dll -lBox2D
LDFLAGS_RELEASE_WINDOWS = $(LDFLAGS) -s
OBJDIR_RELEASE_WINDOWS = ../../bin
DEP_RELEASE_WINDOWS = 
OUT_RELEASE_WINDOWS = ../../bin/Bomberman

OBJ_DEBUG_LINUX = $(OBJDIR_DEBUG_LINUX)/MenuState.o $(OBJDIR_DEBUG_LINUX)/OptionsState.o $(OBJDIR_DEBUG_LINUX)/PauseState.o $(OBJDIR_DEBUG_LINUX)/PlayState.o $(OBJDIR_DEBUG_LINUX)/main.o

OBJ_RELEASE_LINUX = $(OBJDIR_RELEASE_LINUX)/MenuState.o $(OBJDIR_RELEASE_LINUX)/OptionsState.o $(OBJDIR_RELEASE_LINUX)/PauseState.o $(OBJDIR_RELEASE_LINUX)/PlayState.o $(OBJDIR_RELEASE_LINUX)/main.o

OBJ_DEBUG_WINDOWS = $(OBJDIR_DEBUG_WINDOWS)/MenuState.o $(OBJDIR_DEBUG_WINDOWS)/OptionsState.o $(OBJDIR_DEBUG_WINDOWS)/PauseState.o $(OBJDIR_DEBUG_WINDOWS)/PlayState.o $(OBJDIR_DEBUG_WINDOWS)/main.o

OBJ_RELEASE_WINDOWS = $(OBJDIR_RELEASE_WINDOWS)/MenuState.o $(OBJDIR_RELEASE_WINDOWS)/OptionsState.o $(OBJDIR_RELEASE_WINDOWS)/PauseState.o $(OBJDIR_RELEASE_WINDOWS)/PlayState.o $(OBJDIR_RELEASE_WINDOWS)/main.o

all: debug_linux release_linux debug_windows release_windows

clean: clean_debug_linux clean_release_linux clean_debug_windows clean_release_windows

before_debug_linux: 
	test -d ../../bin || mkdir -p ../../bin
	test -d $(OBJDIR_DEBUG_LINUX) || mkdir -p $(OBJDIR_DEBUG_LINUX)

after_debug_linux: 

debug_linux: before_debug_linux out_debug_linux after_debug_linux

out_debug_linux: before_debug_linux $(OBJ_DEBUG_LINUX) $(DEP_DEBUG_LINUX)
	$(LD) $(LIBDIR_DEBUG_LINUX) -o $(OUT_DEBUG_LINUX) $(OBJ_DEBUG_LINUX)  $(LDFLAGS_DEBUG_LINUX) $(LIB_DEBUG_LINUX)

$(OBJDIR_DEBUG_LINUX)/MenuState.o: MenuState.cpp
	$(CXX) $(CFLAGS_DEBUG_LINUX) $(INC_DEBUG_LINUX) -c MenuState.cpp -o $(OBJDIR_DEBUG_LINUX)/MenuState.o

$(OBJDIR_DEBUG_LINUX)/OptionsState.o: OptionsState.cpp
	$(CXX) $(CFLAGS_DEBUG_LINUX) $(INC_DEBUG_LINUX) -c OptionsState.cpp -o $(OBJDIR_DEBUG_LINUX)/OptionsState.o

$(OBJDIR_DEBUG_LINUX)/PauseState.o: PauseState.cpp
	$(CXX) $(CFLAGS_DEBUG_LINUX) $(INC_DEBUG_LINUX) -c PauseState.cpp -o $(OBJDIR_DEBUG_LINUX)/PauseState.o

$(OBJDIR_DEBUG_LINUX)/PlayState.o: PlayState.cpp
	$(CXX) $(CFLAGS_DEBUG_LINUX) $(INC_DEBUG_LINUX) -c PlayState.cpp -o $(OBJDIR_DEBUG_LINUX)/PlayState.o

$(OBJDIR_DEBUG_LINUX)/main.o: main.cpp
	$(CXX) $(CFLAGS_DEBUG_LINUX) $(INC_DEBUG_LINUX) -c main.cpp -o $(OBJDIR_DEBUG_LINUX)/main.o

clean_debug_linux: 
	rm -f $(OBJ_DEBUG_LINUX) $(OUT_DEBUG_LINUX)
	rm -rf ../../bin
	rm -rf $(OBJDIR_DEBUG_LINUX)

before_release_linux: 
	test -d ../../bin || mkdir -p ../../bin
	test -d $(OBJDIR_RELEASE_LINUX) || mkdir -p $(OBJDIR_RELEASE_LINUX)

after_release_linux: 

release_linux: before_release_linux out_release_linux after_release_linux

out_release_linux: before_release_linux $(OBJ_RELEASE_LINUX) $(DEP_RELEASE_LINUX)
	$(LD) $(LIBDIR_RELEASE_LINUX) -o $(OUT_RELEASE_LINUX) $(OBJ_RELEASE_LINUX)  $(LDFLAGS_RELEASE_LINUX) $(LIB_RELEASE_LINUX)

$(OBJDIR_RELEASE_LINUX)/MenuState.o: MenuState.cpp
	$(CXX) $(CFLAGS_RELEASE_LINUX) $(INC_RELEASE_LINUX) -c MenuState.cpp -o $(OBJDIR_RELEASE_LINUX)/MenuState.o

$(OBJDIR_RELEASE_LINUX)/OptionsState.o: OptionsState.cpp
	$(CXX) $(CFLAGS_RELEASE_LINUX) $(INC_RELEASE_LINUX) -c OptionsState.cpp -o $(OBJDIR_RELEASE_LINUX)/OptionsState.o

$(OBJDIR_RELEASE_LINUX)/PauseState.o: PauseState.cpp
	$(CXX) $(CFLAGS_RELEASE_LINUX) $(INC_RELEASE_LINUX) -c PauseState.cpp -o $(OBJDIR_RELEASE_LINUX)/PauseState.o

$(OBJDIR_RELEASE_LINUX)/PlayState.o: PlayState.cpp
	$(CXX) $(CFLAGS_RELEASE_LINUX) $(INC_RELEASE_LINUX) -c PlayState.cpp -o $(OBJDIR_RELEASE_LINUX)/PlayState.o

$(OBJDIR_RELEASE_LINUX)/main.o: main.cpp
	$(CXX) $(CFLAGS_RELEASE_LINUX) $(INC_RELEASE_LINUX) -c main.cpp -o $(OBJDIR_RELEASE_LINUX)/main.o

clean_release_linux: 
	rm -f $(OBJ_RELEASE_LINUX) $(OUT_RELEASE_LINUX)
	rm -rf ../../bin
	rm -rf $(OBJDIR_RELEASE_LINUX)

before_debug_windows: 
	test -d ../../bin || mkdir -p ../../bin
	test -d $(OBJDIR_DEBUG_WINDOWS) || mkdir -p $(OBJDIR_DEBUG_WINDOWS)

after_debug_windows: 

debug_windows: before_debug_windows out_debug_windows after_debug_windows

out_debug_windows: before_debug_windows $(OBJ_DEBUG_WINDOWS) $(DEP_DEBUG_WINDOWS)
	$(LD) $(LIBDIR_DEBUG_WINDOWS) -o $(OUT_DEBUG_WINDOWS) $(OBJ_DEBUG_WINDOWS)  $(LDFLAGS_DEBUG_WINDOWS) $(LIB_DEBUG_WINDOWS)

$(OBJDIR_DEBUG_WINDOWS)/MenuState.o: MenuState.cpp
	$(CXX) $(CFLAGS_DEBUG_WINDOWS) $(INC_DEBUG_WINDOWS) -c MenuState.cpp -o $(OBJDIR_DEBUG_WINDOWS)/MenuState.o

$(OBJDIR_DEBUG_WINDOWS)/OptionsState.o: OptionsState.cpp
	$(CXX) $(CFLAGS_DEBUG_WINDOWS) $(INC_DEBUG_WINDOWS) -c OptionsState.cpp -o $(OBJDIR_DEBUG_WINDOWS)/OptionsState.o

$(OBJDIR_DEBUG_WINDOWS)/PauseState.o: PauseState.cpp
	$(CXX) $(CFLAGS_DEBUG_WINDOWS) $(INC_DEBUG_WINDOWS) -c PauseState.cpp -o $(OBJDIR_DEBUG_WINDOWS)/PauseState.o

$(OBJDIR_DEBUG_WINDOWS)/PlayState.o: PlayState.cpp
	$(CXX) $(CFLAGS_DEBUG_WINDOWS) $(INC_DEBUG_WINDOWS) -c PlayState.cpp -o $(OBJDIR_DEBUG_WINDOWS)/PlayState.o

$(OBJDIR_DEBUG_WINDOWS)/main.o: main.cpp
	$(CXX) $(CFLAGS_DEBUG_WINDOWS) $(INC_DEBUG_WINDOWS) -c main.cpp -o $(OBJDIR_DEBUG_WINDOWS)/main.o

clean_debug_windows: 
	rm -f $(OBJ_DEBUG_WINDOWS) $(OUT_DEBUG_WINDOWS)
	rm -rf ../../bin
	rm -rf $(OBJDIR_DEBUG_WINDOWS)

before_release_windows: 
	test -d ../../bin || mkdir -p ../../bin
	test -d $(OBJDIR_RELEASE_WINDOWS) || mkdir -p $(OBJDIR_RELEASE_WINDOWS)

after_release_windows: 

release_windows: before_release_windows out_release_windows after_release_windows

out_release_windows: before_release_windows $(OBJ_RELEASE_WINDOWS) $(DEP_RELEASE_WINDOWS)
	$(LD) $(LIBDIR_RELEASE_WINDOWS) -o $(OUT_RELEASE_WINDOWS) $(OBJ_RELEASE_WINDOWS)  $(LDFLAGS_RELEASE_WINDOWS) $(LIB_RELEASE_WINDOWS)

$(OBJDIR_RELEASE_WINDOWS)/MenuState.o: MenuState.cpp
	$(CXX) $(CFLAGS_RELEASE_WINDOWS) $(INC_RELEASE_WINDOWS) -c MenuState.cpp -o $(OBJDIR_RELEASE_WINDOWS)/MenuState.o

$(OBJDIR_RELEASE_WINDOWS)/OptionsState.o: OptionsState.cpp
	$(CXX) $(CFLAGS_RELEASE_WINDOWS) $(INC_RELEASE_WINDOWS) -c OptionsState.cpp -o $(OBJDIR_RELEASE_WINDOWS)/OptionsState.o

$(OBJDIR_RELEASE_WINDOWS)/PauseState.o: PauseState.cpp
	$(CXX) $(CFLAGS_RELEASE_WINDOWS) $(INC_RELEASE_WINDOWS) -c PauseState.cpp -o $(OBJDIR_RELEASE_WINDOWS)/PauseState.o

$(OBJDIR_RELEASE_WINDOWS)/PlayState.o: PlayState.cpp
	$(CXX) $(CFLAGS_RELEASE_WINDOWS) $(INC_RELEASE_WINDOWS) -c PlayState.cpp -o $(OBJDIR_RELEASE_WINDOWS)/PlayState.o

$(OBJDIR_RELEASE_WINDOWS)/main.o: main.cpp
	$(CXX) $(CFLAGS_RELEASE_WINDOWS) $(INC_RELEASE_WINDOWS) -c main.cpp -o $(OBJDIR_RELEASE_WINDOWS)/main.o

clean_release_windows: 
	rm -f $(OBJ_RELEASE_WINDOWS) $(OUT_RELEASE_WINDOWS)
	rm -rf ../../bin
	rm -rf $(OBJDIR_RELEASE_WINDOWS)

.PHONY: before_debug_linux after_debug_linux clean_debug_linux before_release_linux after_release_linux clean_release_linux before_debug_windows after_debug_windows clean_debug_windows before_release_windows after_release_windows clean_release_windows

