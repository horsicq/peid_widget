include_directories(${CMAKE_CURRENT_LIST_DIR})

if (NOT DEFINED XSCANWIDGETS_SOURCES)
    include(${CMAKE_CURRENT_LIST_DIR}/../XScanEngine/xscanwidgets.cmake)
    set(PEID_WIDGET_SOURCES ${PEID_WIDGET_SOURCES} ${XSCANWIDGETS_SOURCES})
endif()

set(PEID_WIDGET_SOURCES
    ${PEID_WIDGET_SOURCES}
    ${CMAKE_CURRENT_LIST_DIR}/peid_widget.cpp
    ${CMAKE_CURRENT_LIST_DIR}/peid_widget.h
)
