import QtQuick

Window {
    visible: true
    width: 400
    height: 400
    title: qsTr("45도 회전 시키기")

    Image{
        anchors.centerIn: parent
        source: "images/QtLogo.png"
        rotation: 45
    }
}
