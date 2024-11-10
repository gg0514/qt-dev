import QtQuick

Window {
    title: "Screen"
    visible: true

    width : Screen.width / 2;
    height : Screen.height / 2;

    Rectangle {
        width : 300
        height: 200
        color: "blue"

        anchors.centerIn: parent
    }
}



