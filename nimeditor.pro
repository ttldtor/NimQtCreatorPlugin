QTC_SOURCE=$$(QTC_SOURCE)
QTC_BUILD=$$(QTC_BUILD)
isEmpty(QTC_SOURCE):error(QTC_SOURCE must be set)
isEmpty(QTC_BUILD):error(QTC_BUILD must be set)
IDE_BUILD_TREE=$$QTC_BUILD

QTC_PLUGIN_NAME = Nim
QTC_PLUGIN_DEPENDS = coreplugin texteditor projectexplorer
include($$QTC_SOURCE/src/qtcreatorplugin.pri)

DEFINES += \
    NIMEDITOR_LIBRARY

RESOURCES += \
    nimeditorplugin.qrc

HEADERS += \
    nimeditorplugin.h \
    nimeditor.h \
    nimeditorconstants.h \
    tools/lexical/sourcecodestream.h \
    tools/nimhighlighter.h \
    tools/nimindenter.h \
    tools/nimlexer.h

SOURCES += \
    nimeditorplugin.cpp \
    nimeditor.cpp \
    tools/nimhighlighter.cpp \
    tools/nimindenter.cpp \
    tools/nimlexer.cpp
