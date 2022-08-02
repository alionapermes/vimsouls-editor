set(EXEC vimsouls-editor)
set(SRC main.cpp)
set(QML main.qml)

add_executable(${EXEC} ${SRC})
qt_add_qml_module(${EXEC}
    URI hello
    VERSION 0.1.0
    QML_FILES
        ${QML}
)

target_link_libraries(${EXEC} PRIVATE Qt6::Gui Qt6::Quick)

