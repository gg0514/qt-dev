import QtQuick

Window {
    visible: true
    width: 300; height: 300
    title: "anchors"

    Rectangle {
        width: 300
        height: 300
        color: "lightblue"
        id: rectangle1

        Rectangle {
            id: subRect
            width: 300
            height: 100
            color: "yellow"
        }

        Text {
            text: "qt-dev.com";
            color: "green"
            font.family: "Helvetica";
            font.pixelSize: 32
            anchors.top: subRect.bottom
            anchors.centerIn: rectangle1
        }
    }
}
