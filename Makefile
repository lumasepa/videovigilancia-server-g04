#############################################################################
# Makefile for building: Server
# Generated by qmake (2.01a) (Qt 4.8.4) on: Wed Jun 12 16:34:49 2013
# Project:  Server.pro
# Template: app
# Command: /usr/bin/qmake-qt4 -spec /usr/lib64/qt4/mkspecs/linux-g++ CONFIG+=debug CONFIG+=declarative_debug -o Makefile Server.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DAPP_DATADIR=\"/var/lib/Server\" -DAPP_VARDIR=\"/var/lib/Server\" -DAPP_CONFFILE=\"/etc/Server.conf\" -DQT_GUI_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/lib64/qt4/mkspecs/linux-g++ -I. -I/usr/include/QtCore -I/usr/include/QtNetwork -I/usr/include/QtGui -I/usr/include -I.
LINK          = g++
LFLAGS        = 
LIBS          = $(SUBLIBS)  -L/usr/lib64 -lprotobuf -lQtGui -lQtNetwork -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake-qt4
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = 
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
		consola.cpp \
		sslserver.cpp \
		client.cpp \
		hilo.cpp \
		riff.cpp protocol.pb.cc \
		moc_consola.cpp \
		moc_sslserver.cpp \
		moc_client.cpp \
		moc_hilo.cpp
OBJECTS       = main.o \
		consola.o \
		sslserver.o \
		client.o \
		hilo.o \
		riff.o \
		protocol.pb.o \
		moc_consola.o \
		moc_sslserver.o \
		moc_client.o \
		moc_hilo.o
DIST          = /usr/lib64/qt4/mkspecs/common/unix.conf \
		/usr/lib64/qt4/mkspecs/common/linux.conf \
		/usr/lib64/qt4/mkspecs/common/gcc-base.conf \
		/usr/lib64/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/lib64/qt4/mkspecs/common/g++-base.conf \
		/usr/lib64/qt4/mkspecs/common/g++-unix.conf \
		/usr/lib64/qt4/mkspecs/qconfig.pri \
		/usr/lib64/qt4/mkspecs/features/qt_functions.prf \
		/usr/lib64/qt4/mkspecs/features/qt_config.prf \
		/usr/lib64/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/lib64/qt4/mkspecs/features/default_pre.prf \
		protobuf.pri \
		/usr/lib64/qt4/mkspecs/features/debug.prf \
		/usr/lib64/qt4/mkspecs/features/default_post.prf \
		/usr/lib64/qt4/mkspecs/features/declarative_debug.prf \
		/usr/lib64/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/lib64/qt4/mkspecs/features/warn_on.prf \
		/usr/lib64/qt4/mkspecs/features/qt.prf \
		/usr/lib64/qt4/mkspecs/features/unix/thread.prf \
		/usr/lib64/qt4/mkspecs/features/moc.prf \
		/usr/lib64/qt4/mkspecs/features/resources.prf \
		/usr/lib64/qt4/mkspecs/features/uic.prf \
		/usr/lib64/qt4/mkspecs/features/yacc.prf \
		/usr/lib64/qt4/mkspecs/features/lex.prf \
		/usr/lib64/qt4/mkspecs/features/include_source_dir.prf \
		Server.pro
QMAKE_TARGET  = Server
DESTDIR       = 
TARGET        = Server

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

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)
	{ test -n "$(DESTDIR)" && DESTDIR="$(DESTDIR)" || DESTDIR=.; } && test $$(gdb --version | sed -e 's,[^0-9]\+\([0-9]\)\.\([0-9]\).*,\1\2,;q') -gt 72 && gdb --nx --batch --quiet -ex 'set confirm off' -ex "save gdb-index $$DESTDIR" -ex quit '$(TARGET)' && test -f $(TARGET).gdb-index && objcopy --add-section '.gdb_index=$(TARGET).gdb-index' --set-section-flags '.gdb_index=readonly' '$(TARGET)' '$(TARGET)' && rm -f $(TARGET).gdb-index || true

Makefile: Server.pro  /usr/lib64/qt4/mkspecs/linux-g++/qmake.conf /usr/lib64/qt4/mkspecs/common/unix.conf \
		/usr/lib64/qt4/mkspecs/common/linux.conf \
		/usr/lib64/qt4/mkspecs/common/gcc-base.conf \
		/usr/lib64/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/lib64/qt4/mkspecs/common/g++-base.conf \
		/usr/lib64/qt4/mkspecs/common/g++-unix.conf \
		/usr/lib64/qt4/mkspecs/qconfig.pri \
		/usr/lib64/qt4/mkspecs/features/qt_functions.prf \
		/usr/lib64/qt4/mkspecs/features/qt_config.prf \
		/usr/lib64/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/lib64/qt4/mkspecs/features/default_pre.prf \
		protobuf.pri \
		/usr/lib64/qt4/mkspecs/features/debug.prf \
		/usr/lib64/qt4/mkspecs/features/default_post.prf \
		/usr/lib64/qt4/mkspecs/features/declarative_debug.prf \
		/usr/lib64/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/lib64/qt4/mkspecs/features/warn_on.prf \
		/usr/lib64/qt4/mkspecs/features/qt.prf \
		/usr/lib64/qt4/mkspecs/features/unix/thread.prf \
		/usr/lib64/qt4/mkspecs/features/moc.prf \
		/usr/lib64/qt4/mkspecs/features/resources.prf \
		/usr/lib64/qt4/mkspecs/features/uic.prf \
		/usr/lib64/qt4/mkspecs/features/yacc.prf \
		/usr/lib64/qt4/mkspecs/features/lex.prf \
		/usr/lib64/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib64/libQtGui.prl \
		/usr/lib64/libQtCore.prl \
		/usr/lib64/libQtNetwork.prl
	$(QMAKE) -spec /usr/lib64/qt4/mkspecs/linux-g++ CONFIG+=debug CONFIG+=declarative_debug -o Makefile Server.pro
/usr/lib64/qt4/mkspecs/common/unix.conf:
/usr/lib64/qt4/mkspecs/common/linux.conf:
/usr/lib64/qt4/mkspecs/common/gcc-base.conf:
/usr/lib64/qt4/mkspecs/common/gcc-base-unix.conf:
/usr/lib64/qt4/mkspecs/common/g++-base.conf:
/usr/lib64/qt4/mkspecs/common/g++-unix.conf:
/usr/lib64/qt4/mkspecs/qconfig.pri:
/usr/lib64/qt4/mkspecs/features/qt_functions.prf:
/usr/lib64/qt4/mkspecs/features/qt_config.prf:
/usr/lib64/qt4/mkspecs/features/exclusive_builds.prf:
/usr/lib64/qt4/mkspecs/features/default_pre.prf:
protobuf.pri:
/usr/lib64/qt4/mkspecs/features/debug.prf:
/usr/lib64/qt4/mkspecs/features/default_post.prf:
/usr/lib64/qt4/mkspecs/features/declarative_debug.prf:
/usr/lib64/qt4/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/lib64/qt4/mkspecs/features/warn_on.prf:
/usr/lib64/qt4/mkspecs/features/qt.prf:
/usr/lib64/qt4/mkspecs/features/unix/thread.prf:
/usr/lib64/qt4/mkspecs/features/moc.prf:
/usr/lib64/qt4/mkspecs/features/resources.prf:
/usr/lib64/qt4/mkspecs/features/uic.prf:
/usr/lib64/qt4/mkspecs/features/yacc.prf:
/usr/lib64/qt4/mkspecs/features/lex.prf:
/usr/lib64/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib64/libQtGui.prl:
/usr/lib64/libQtCore.prl:
/usr/lib64/libQtNetwork.prl:
qmake:  FORCE
	@$(QMAKE) -spec /usr/lib64/qt4/mkspecs/linux-g++ CONFIG+=debug CONFIG+=declarative_debug -o Makefile Server.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/Server1.0.0 || $(MKDIR) .tmp/Server1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/Server1.0.0/ && $(COPY_FILE) --parents protocol.proto .tmp/Server1.0.0/ && $(COPY_FILE) --parents protocol.proto .tmp/Server1.0.0/ && $(COPY_FILE) --parents consola.h sslserver.h client.h hilo.h riff.h .tmp/Server1.0.0/ && $(COPY_FILE) --parents main.cpp consola.cpp sslserver.cpp client.cpp hilo.cpp riff.cpp .tmp/Server1.0.0/ && (cd `dirname .tmp/Server1.0.0` && $(TAR) Server1.0.0.tar Server1.0.0 && $(COMPRESS) Server1.0.0.tar) && $(MOVE) `dirname .tmp/Server1.0.0`/Server1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/Server1.0.0


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

compiler_protobuf_decl_make_all: protocol.pb.h
compiler_protobuf_decl_clean:
	-$(DEL_FILE) protocol.pb.h
protocol.pb.h: protocol.proto
	protoc --cpp_out=. --proto_path=. protocol.proto

compiler_protobuf_impl_make_all: protocol.pb.cc
compiler_protobuf_impl_clean:
	-$(DEL_FILE) protocol.pb.cc
protocol.pb.cc: protocol.proto \
		protocol.pb.h
	


compiler_moc_header_make_all: moc_consola.cpp moc_sslserver.cpp moc_client.cpp moc_hilo.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_consola.cpp moc_sslserver.cpp moc_client.cpp moc_hilo.cpp
moc_consola.cpp: sslserver.h \
		hilo.h \
		client.h \
		riff.h \
		protocol.pb.h \
		consola.h
	/usr/lib64/qt4/bin/moc $(DEFINES) $(INCPATH) consola.h -o moc_consola.cpp

moc_sslserver.cpp: hilo.h \
		client.h \
		riff.h \
		sslserver.h
	/usr/lib64/qt4/bin/moc $(DEFINES) $(INCPATH) sslserver.h -o moc_sslserver.cpp

moc_client.cpp: riff.h \
		client.h
	/usr/lib64/qt4/bin/moc $(DEFINES) $(INCPATH) client.h -o moc_client.cpp

moc_hilo.cpp: client.h \
		riff.h \
		hilo.h
	/usr/lib64/qt4/bin/moc $(DEFINES) $(INCPATH) hilo.h -o moc_hilo.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_protobuf_decl_clean compiler_protobuf_impl_clean compiler_moc_header_clean 

####### Compile

main.o: main.cpp consola.h \
		sslserver.h \
		hilo.h \
		client.h \
		riff.h \
		protocol.pb.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

consola.o: consola.cpp consola.h \
		sslserver.h \
		hilo.h \
		client.h \
		riff.h \
		protocol.pb.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o consola.o consola.cpp

sslserver.o: sslserver.cpp sslserver.h \
		hilo.h \
		client.h \
		riff.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o sslserver.o sslserver.cpp

client.o: client.cpp client.h \
		riff.h \
		protocol.pb.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o client.o client.cpp

hilo.o: hilo.cpp hilo.h \
		client.h \
		riff.h \
		protocol.pb.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o hilo.o hilo.cpp

riff.o: riff.cpp riff.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o riff.o riff.cpp

protocol.pb.o: protocol.pb.cc 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o protocol.pb.o protocol.pb.cc

moc_consola.o: moc_consola.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_consola.o moc_consola.cpp

moc_sslserver.o: moc_sslserver.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_sslserver.o moc_sslserver.cpp

moc_client.o: moc_client.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_client.o moc_client.cpp

moc_hilo.o: moc_hilo.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_hilo.o moc_hilo.cpp

####### Install

install_target: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/usr/bin/ || $(MKDIR) $(INSTALL_ROOT)/usr/bin/ 
	-$(INSTALL_PROGRAM) "$(QMAKE_TARGET)" "$(INSTALL_ROOT)/usr/bin/$(QMAKE_TARGET)"

uninstall_target:  FORCE
	-$(DEL_FILE) "$(INSTALL_ROOT)/usr/bin/$(QMAKE_TARGET)"
	-$(DEL_DIR) $(INSTALL_ROOT)/usr/bin/ 


install_ssl: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/var/lib/Server/SSL/ || $(MKDIR) $(INSTALL_ROOT)/var/lib/Server/SSL/ 
	-$(INSTALL_FILE) /home/luma/UNI/TERCERO/SOA/Server_pull_hilos/SSL/gen_ssl $(INSTALL_ROOT)/var/lib/Server/SSL/
	-$(INSTALL_FILE) /home/luma/UNI/TERCERO/SOA/Server_pull_hilos/SSL/server.crt $(INSTALL_ROOT)/var/lib/Server/SSL/
	-$(INSTALL_FILE) /home/luma/UNI/TERCERO/SOA/Server_pull_hilos/SSL/server.key $(INSTALL_ROOT)/var/lib/Server/SSL/


uninstall_ssl:  FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/var/lib/Server/SSL/gen_ssl 
	 -$(DEL_FILE) -r $(INSTALL_ROOT)/var/lib/Server/SSL/server.crt 
	 -$(DEL_FILE) -r $(INSTALL_ROOT)/var/lib/Server/SSL/server.key
	-$(DEL_DIR) $(INSTALL_ROOT)/var/lib/Server/SSL/ 


install_vardir: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/var/lib/Server/ || $(MKDIR) $(INSTALL_ROOT)/var/lib/Server/ 
	:


install:  install_target install_ssl install_vardir  FORCE

uninstall: uninstall_target uninstall_ssl   FORCE

FORCE:

