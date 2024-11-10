import QtQuick

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    MouseArea {
            anchors.fill: parent
            onClicked: {
                Qt.quit();
            }
    }

    Text {
        text: qsTr("Hello World")
        anchors.centerIn: parent
        font.pixelSize: 20
    }
}
