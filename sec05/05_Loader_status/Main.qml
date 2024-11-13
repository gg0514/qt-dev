import QtQuick

Window {
    visible: true
    width: 200
    height: 200

    Loader {
        id: pageLoader
        anchors.top: myRect.bottom

        onStatusChanged: {
            if (pageLoader.status == Loader.Null)
                console.log('Null')
            else if (pageLoader.status == Loader.Ready)
                console.log('Ready')
            else if (pageLoader.status == Loader.Loading)
                console.log('Loading')
            else if (pageLoader.status == Loader.Error)
                console.log('Error')
        }
    }

    Rectangle {
            id: myRect; width: 200; height: 100; color: "yellow"
            Text {
                anchors.centerIn: parent
                text : "Main QML"; font.bold: true
            }
            MouseArea {
                anchors.fill: parent
                onClicked: pageLoader.source = "page.qml"
            }
    }
}

