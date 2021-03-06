# Copyright (C) 2014 AnthonOS Open Source Community

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets network

TARGET = FixMe
CONFIG += link_pkgconfig
PKGCONFIG += libsystemd-journal
TEMPLATE = app

SOURCES  += main.cpp                                    \
            qtsingleapplication/qtsingleapplication.cpp \
            qtsingleapplication/qtlocalpeer.cpp

HEADERS  += qtsingleapplication/qtsingleapplication.h   \
            qtsingleapplication/qtlocalpeer.h           \
            coredumphook.h

unix {                                                                             
    #VARIABLES                                                                     
    isEmpty(PREFIX) {                                                              
        PREFIX = /usr                                                              
    }                                                                              
    BINDIR = $$PREFIX/bin 
                                                                                   
    INSTALLS += target autostart                                                   
                                                                                   
    target.path = $$BINDIR                                                         
                                                                                   
    autostart.path = /etc/xdg/autostart                                            
    autostart.files += $${TARGET}.desktop                                          
}
