LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

iperf_SOURCES = \
    src/Client.cpp \
    src/Extractor.c \
    src/gnu_getopt_long.c \
    src/gnu_getopt.c \
    src/Launch.cpp \
    src/Listener.cpp \
    src/List.cpp \
    src/Locale.c \
    src/main.cpp \
    src/PerfSocket.cpp \
    src/ReportCSV.c \
    src/ReportDefault.c \
    src/Reporter.c \
    src/Server.cpp \
    src/service.c \
    src/Settings.cpp \
    src/SocketAddr.c \
    src/sockets.c \
    src/stdio.c \
    src/tcp_window_size.c \
    compat/delay.cpp \
    compat/Thread.c \
    compat/error.c \
    compat/signal.c \
    compat/string.c \



LOCAL_SRC_FILES := $(iperf_SOURCES)

LOCAL_SHARED_LIBRARIES :=

LOCAL_C_INCLUDES :=$(LOCAL_PATH)/include

LOCAL_CFLAGS+=-O3 -g -W -Wall -Wno-unused 

LOCAL_MODULE:= iperf
LOCAL_MODULE_TAGS := debug eng optional

include $(BUILD_EXECUTABLE)


