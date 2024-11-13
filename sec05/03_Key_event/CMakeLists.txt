cmake_minimum_required(VERSION 3.16)

project(03_Key_event VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(app03_Key_event
    main.cpp
)

qt_add_qml_module(app03_Key_event
    URI 03_Key_event
    VERSION 1.0
    QML_FILES
        Main.qml
        QML_FILES keyreader.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(app03_Key_event PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.app03_Key_event
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(app03_Key_event
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS app03_Key_event
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
