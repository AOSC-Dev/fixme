QT       += core
QT       -= gui

TARGET = qinotify
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app

DEFINES += QT_MOC

LIBS += -lsystemd-journal

SOURCES += qinotify.cpp
