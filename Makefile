#############################################################################
# Makefile for building: gps_test
# Generated by qmake (2.01a) (Qt 4.8.3) on: ?? 3? 15 08:05:31 2014
# Project:  gps_test.pro
# Template: app
# Command: /home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/i686-arago-linux/usr/bin/qmake -spec /home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/linux-g++ CONFIG+=debug CONFIG+=declarative_debug -o Makefile gps_test.pro
#############################################################################

####### Compiler, tools and options

CC            = $(OE_QMAKE_CC)
CXX           = $(OE_QMAKE_CXX)
DEFINES       = -DQT_QWS_CLIENTBLIT -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -pipe $(OE_QMAKE_CFLAGS) -g -g -Wall -W -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -pipe -pipe $(OE_QMAKE_CFLAGS) $(OE_QMAKE_CXXFLAGS) -g -g -g -Wall -W -Wall -W -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/linux-g++ -I. -I$(OE_QMAKE_INCDIR_QT)/QtCore -I$(OE_QMAKE_INCDIR_QT)/QtGui -I$(OE_QMAKE_INCDIR_QT) -I. -I.
LINK          = $(OE_QMAKE_LINK)
LFLAGS        = $(OE_QMAKE_LDFLAGS) -Wl,-rpath-link,$(OE_QMAKE_LIBDIR_QT)
LIBS          = $(SUBLIBS)  -L$(OE_QMAKE_LIBDIR_QT) -lQtGuiE -lEGL -lIMGegl -lsrv_um -lQtNetworkE -lQtCoreE -lpthread 
AR            = $(OE_QMAKE_AR) cqs
RANLIB        = 
QMAKE         = /home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/i686-arago-linux/usr/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = $(OE_QMAKE_STRIP)
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		mainwindow.cpp moc_mainwindow.cpp
OBJECTS       = main.o \
		mainwindow.o \
		moc_mainwindow.o
DIST          = /home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/common/unix.conf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/common/linux.conf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/common/gcc-base.conf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/common/gcc-base-unix.conf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/common/g++-unix.conf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/qconfig.pri \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/modules/qt_webkit_version.pri \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/qt_functions.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/qt_config.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/exclusive_builds.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/default_pre.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/debug.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/default_post.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/declarative_debug.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/unix/gdb_dwarf_index.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/warn_on.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/qt.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/unix/thread.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/moc.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/resources.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/uic.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/yacc.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/lex.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/include_source_dir.prf \
		gps_test.pro
QMAKE_TARGET  = gps_test
DESTDIR       = 
TARGET        = gps_test

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET): ui_mainwindow.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)
	{ test -n "$(DESTDIR)" && DESTDIR="$(DESTDIR)" || DESTDIR=.; } && test $$(gdb --version | sed -e 's,[^0-9]\+\([0-9]\)\.\([0-9]\).*,\1\2,;q') -gt 72 && gdb --nx --batch --quiet -ex 'set confirm off' -ex "save gdb-index $$DESTDIR" -ex quit '$(TARGET)' && test -f $(TARGET).gdb-index && objcopy --add-section '.gdb_index=$(TARGET).gdb-index' --set-section-flags '.gdb_index=readonly' '$(TARGET)' '$(TARGET)' && rm -f $(TARGET).gdb-index || true

Makefile: gps_test.pro  /home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/linux-g++/qmake.conf /home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/common/unix.conf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/common/linux.conf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/common/gcc-base.conf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/common/gcc-base-unix.conf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/common/g++-unix.conf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/qconfig.pri \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/modules/qt_webkit_version.pri \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/qt_functions.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/qt_config.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/exclusive_builds.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/default_pre.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/debug.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/default_post.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/declarative_debug.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/unix/gdb_dwarf_index.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/warn_on.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/qt.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/unix/thread.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/moc.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/resources.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/uic.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/yacc.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/lex.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/include_source_dir.prf \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/lib/libQtGuiE.prl \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/lib/libQtNetworkE.prl \
		/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/lib/libQtCoreE.prl
	$(QMAKE) -spec /home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/linux-g++ CONFIG+=debug CONFIG+=declarative_debug -o Makefile gps_test.pro
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/common/unix.conf:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/common/linux.conf:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/common/gcc-base.conf:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/common/gcc-base-unix.conf:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/common/g++-unix.conf:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/qconfig.pri:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/modules/qt_webkit_version.pri:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/qt_functions.prf:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/qt_config.prf:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/exclusive_builds.prf:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/default_pre.prf:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/debug.prf:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/default_post.prf:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/declarative_debug.prf:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/unix/gdb_dwarf_index.prf:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/warn_on.prf:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/qt.prf:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/unix/thread.prf:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/moc.prf:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/resources.prf:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/uic.prf:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/yacc.prf:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/lex.prf:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/features/include_source_dir.prf:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/lib/libQtGuiE.prl:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/lib/libQtNetworkE.prl:
/home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/lib/libQtCoreE.prl:
qmake:  FORCE
	@$(QMAKE) -spec /home/gaoming/ti-sdk-am335x-evm-06.00.00.00/linux-devkit/sysroots/armv7ahf-vfp-neon-3.2-oe-linux-gnueabi/usr/share/qtopia/mkspecs/linux-g++ CONFIG+=debug CONFIG+=declarative_debug -o Makefile gps_test.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/gps_test1.0.0 || $(MKDIR) .tmp/gps_test1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/gps_test1.0.0/ && $(COPY_FILE) --parents mainwindow.h .tmp/gps_test1.0.0/ && $(COPY_FILE) --parents main.cpp mainwindow.cpp .tmp/gps_test1.0.0/ && $(COPY_FILE) --parents mainwindow.ui .tmp/gps_test1.0.0/ && (cd `dirname .tmp/gps_test1.0.0` && $(TAR) gps_test1.0.0.tar gps_test1.0.0 && $(COMPRESS) gps_test1.0.0.tar) && $(MOVE) `dirname .tmp/gps_test1.0.0`/gps_test1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/gps_test1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_mainwindow.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_mainwindow.cpp
moc_mainwindow.cpp: mainwindow.h
	$(OE_QMAKE_MOC) $(DEFINES) $(INCPATH) mainwindow.h -o moc_mainwindow.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_mainwindow.h
compiler_uic_clean:
	-$(DEL_FILE) ui_mainwindow.h
ui_mainwindow.h: mainwindow.ui
	$(OE_QMAKE_UIC) mainwindow.ui -o ui_mainwindow.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_uic_clean 

####### Compile

main.o: main.cpp mainwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

mainwindow.o: mainwindow.cpp mainwindow.h \
		ui_mainwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainwindow.o mainwindow.cpp

moc_mainwindow.o: moc_mainwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mainwindow.o moc_mainwindow.cpp

####### Install

install_target: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/home/root/ || $(MKDIR) $(INSTALL_ROOT)/home/root/ 
	-$(INSTALL_PROGRAM) "$(QMAKE_TARGET)" "$(INSTALL_ROOT)/home/root/$(QMAKE_TARGET)"

uninstall_target:  FORCE
	-$(DEL_FILE) "$(INSTALL_ROOT)/home/root/$(QMAKE_TARGET)"
	-$(DEL_DIR) $(INSTALL_ROOT)/home/root/ 


install:  install_target  FORCE

uninstall: uninstall_target   FORCE

FORCE:

