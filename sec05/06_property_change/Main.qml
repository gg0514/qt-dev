import QtQuick

Window {
    visible: true; width: 200; height: 200
    Loader {
        id: myLoader
        onLoaded: {
            console.log("After Width :" + myLoader.item.width);
        }
    }
    Component.onCompleted: {
       myLoader.setSource("component.qml", {"color":"blue"})
    }
    Rectangle {
        anchors.top: myLoader.bottom
        width: 200; height: 100
        color: "green"
        MouseArea {
            anchors.fill: parent
            onClicked: {
               myLoader.setSource("component.qml", {"width": 200})
            }
        }
    }
}
