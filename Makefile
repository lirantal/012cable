#############################################################################
# Makefile for building: 012cables
# Generated by qmake (1.07a) (Qt 3.3.6) on: Wed Aug 30 02:59:46 2006
# Project:  012cables.pro
# Template: app
# Command: $(QMAKE) -o Makefile 012cables.pro
#############################################################################

####### Compiler, tools and options

CC       = gcc
CXX      = g++
LEX      = flex
YACC     = yacc
CFLAGS   = -pipe -Wall -W -O2 -D_REENTRANT  -DQT_NO_DEBUG -DQT_THREAD_SUPPORT -DQT_SHARED -DQT_TABLET_SUPPORT
CXXFLAGS = -pipe -Wall -W -O2 -D_REENTRANT  -DQT_NO_DEBUG -DQT_THREAD_SUPPORT -DQT_SHARED -DQT_TABLET_SUPPORT
LEXFLAGS = 
YACCFLAGS= -d
INCPATH  = -I/usr/share/qt3/mkspecs/default -I. -I/usr/include/qt3 -I.ui/ -I. -I.moc/
LINK     = g++
LFLAGS   = 
LIBS     = $(SUBLIBS) -L/usr/share/qt3/lib -L/usr/X11R6/lib -lqt-mt -lXext -lX11 -lm -lpthread
AR       = ar cqs
RANLIB   = 
MOC      = /usr/share/qt3/bin/moc
UIC      = /usr/share/qt3/bin/uic
QMAKE    = qmake
TAR      = tar -cf
GZIP     = gzip -9f
COPY     = cp -f
COPY_FILE= $(COPY)
COPY_DIR = $(COPY) -r
INSTALL_FILE= $(COPY_FILE)
INSTALL_DIR = $(COPY_DIR)
DEL_FILE = rm -f
SYMLINK  = ln -sf
DEL_DIR  = rmdir
MOVE     = mv -f
CHK_DIR_EXISTS= test -d
MKDIR    = mkdir -p

####### Output directory

OBJECTS_DIR = .obj/

####### Files

HEADERS = 
SOURCES = main.cpp
OBJECTS = .obj/main.o \
		.obj/Form1.o \
		.obj/Form2.o \
		.obj/Form3.o \
		.obj/Form4.o
FORMS = Form1.ui \
		Form2.ui \
		Form3.ui \
		Form4.ui
UICDECLS = .ui/Form1.h \
		.ui/Form2.h \
		.ui/Form3.h \
		.ui/Form4.h
UICIMPLS = .ui/Form1.cpp \
		.ui/Form2.cpp \
		.ui/Form3.cpp \
		.ui/Form4.cpp
SRCMOC   = .moc/moc_Form1.cpp \
		.moc/moc_Form2.cpp \
		.moc/moc_Form3.cpp \
		.moc/moc_Form4.cpp
OBJMOC = .obj/moc_Form1.o \
		.obj/moc_Form2.o \
		.obj/moc_Form3.o \
		.obj/moc_Form4.o
DIST	   = 012cables.pro
QMAKE_TARGET = 012cables
DESTDIR  = 
TARGET   = 012cables

first: all
####### Implicit rules

.SUFFIXES: .c .o .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o $@ $<

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o $@ $<

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o $@ $<

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o $@ $<

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o $@ $<

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(UICDECLS) $(OBJECTS) $(OBJMOC)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJMOC) $(OBJCOMP) $(LIBS)

mocables: $(SRCMOC)
uicables: $(UICDECLS) $(UICIMPLS)

$(MOC): 
	( cd $(QTDIR)/src/moc && $(MAKE) )

Makefile: 012cables.pro  /usr/share/qt3/mkspecs/default/qmake.conf /usr/share/qt3/lib/libqt-mt.prl
	$(QMAKE) -o Makefile 012cables.pro
qmake: 
	@$(QMAKE) -o Makefile 012cables.pro

dist: 
	@mkdir -p .obj/012cables && $(COPY_FILE) --parents $(SOURCES) $(HEADERS) $(FORMS) $(DIST) .obj/012cables/ && $(COPY_FILE) --parents Form1.ui.h Form2.ui.h Form4.ui.h .obj/012cables/ && ( cd `dirname .obj/012cables` && $(TAR) 012cables.tar 012cables && $(GZIP) 012cables.tar ) && $(MOVE) `dirname .obj/012cables`/012cables.tar.gz . && $(DEL_FILE) -r .obj/012cables

mocclean:
	-$(DEL_FILE) $(OBJMOC)
	-$(DEL_FILE) $(SRCMOC)

uiclean:
	-$(DEL_FILE) $(UICIMPLS) $(UICDECLS)

yaccclean:
lexclean:
clean: mocclean uiclean
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) $(TARGET)


FORCE:

####### Compile

.obj/main.o: main.cpp .ui/Form1.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/main.o main.cpp

.ui/Form1.h: Form1.ui 
	$(UIC) Form1.ui -o .ui/Form1.h

.ui/Form1.cpp: .ui/Form1.h Form1.ui Form1.ui.h 
	$(UIC) Form1.ui -i Form1.h -o .ui/Form1.cpp

.ui/Form2.h: Form2.ui 
	$(UIC) Form2.ui -o .ui/Form2.h

.ui/Form2.cpp: .ui/Form2.h Form2.ui Form2.ui.h 
	$(UIC) Form2.ui -i Form2.h -o .ui/Form2.cpp

.ui/Form3.h: Form3.ui 
	$(UIC) Form3.ui -o .ui/Form3.h

.ui/Form3.cpp: .ui/Form3.h Form3.ui 
	$(UIC) Form3.ui -i Form3.h -o .ui/Form3.cpp

.ui/Form4.h: Form4.ui 
	$(UIC) Form4.ui -o .ui/Form4.h

.ui/Form4.cpp: .ui/Form4.h Form4.ui Form4.ui.h 
	$(UIC) Form4.ui -i Form4.h -o .ui/Form4.cpp

.obj/Form1.o: .ui/Form1.cpp Form1.ui.h \
		.ui/Form1.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/Form1.o .ui/Form1.cpp

.obj/Form2.o: .ui/Form2.cpp Form2.ui.h \
		.ui/Form2.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/Form2.o .ui/Form2.cpp

.obj/Form3.o: .ui/Form3.cpp .ui/Form3.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/Form3.o .ui/Form3.cpp

.obj/Form4.o: .ui/Form4.cpp Form4.ui.h \
		.ui/Form4.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/Form4.o .ui/Form4.cpp

.obj/moc_Form1.o: .moc/moc_Form1.cpp  .ui/Form1.h 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/moc_Form1.o .moc/moc_Form1.cpp

.obj/moc_Form2.o: .moc/moc_Form2.cpp  .ui/Form2.h 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/moc_Form2.o .moc/moc_Form2.cpp

.obj/moc_Form3.o: .moc/moc_Form3.cpp  .ui/Form3.h 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/moc_Form3.o .moc/moc_Form3.cpp

.obj/moc_Form4.o: .moc/moc_Form4.cpp  .ui/Form4.h 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/moc_Form4.o .moc/moc_Form4.cpp

.moc/moc_Form1.cpp: $(MOC) .ui/Form1.h
	$(MOC) .ui/Form1.h -o .moc/moc_Form1.cpp

.moc/moc_Form2.cpp: $(MOC) .ui/Form2.h
	$(MOC) .ui/Form2.h -o .moc/moc_Form2.cpp

.moc/moc_Form3.cpp: $(MOC) .ui/Form3.h
	$(MOC) .ui/Form3.h -o .moc/moc_Form3.cpp

.moc/moc_Form4.cpp: $(MOC) .ui/Form4.h
	$(MOC) .ui/Form4.h -o .moc/moc_Form4.cpp

####### Install

install:  

uninstall:  

