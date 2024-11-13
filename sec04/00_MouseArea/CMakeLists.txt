cmake_minimum_required(VERSION 3.16)

project(00_MouseArea VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(app00_MouseArea
    main.cpp
)

qt_add_qml_module(app00_MouseArea
    URI 00_MouseArea
    VERSION 1.0
    QML_FILES Main.qml
)

set_target_properties(app00_MouseArea PROPERTIES
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(app00_MouseArea
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS app00_MouseArea
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
