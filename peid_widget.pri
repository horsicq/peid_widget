QT       += concurrent

INCLUDEPATH += $$PWD
DEPENDPATH += $$PWD

HEADERS += \
    $$PWD/nfd_widget.h

SOURCES += \
    $$PWD/nfd_widget.cpp

!contains(XCONFIG, xpeid) {
    XCONFIG += xpeid
    include($$PWD/../XPEID/xpeid.pri)
}

!contains(XCONFIG, xshortcuts) {
    XCONFIG += xshortcuts
    include($$PWD/../XShortcuts/xshortcuts.pri)
}

!contains(XCONFIG, dialogtextinfo) {
    XCONFIG += dialogtextinfo
    include($$PWD/../FormatDialogs/dialogtextinfo.pri)
}

!contains(XCONFIG, xdialogprocess) {
    XCONFIG += xdialogprocess
    include($$PWD/../FormatDialogs/xdialogprocess.pri)
}

!contains(XCONFIG, xcomboboxex) {
    XCONFIG += xcomboboxex
    include($$PWD/../Controls/xcomboboxex.pri)
}

!contains(XCONFIG, xtableview) {
    XCONFIG += xtableview
    include($$PWD/../Controls/xtableview.pri)
}

DISTFILES += \
    $$PWD/LICENSE \
    $$PWD/README.md \
    $$PWD/peid_widget.cmake
