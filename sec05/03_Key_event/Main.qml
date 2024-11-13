import QtQuick

Window {
    visible: true
    width: 200; height: 200

    Loader {
        id: loader
        focus: true
        source: "keyreader.qml"
        anchors.centerIn: parent
    }
}
