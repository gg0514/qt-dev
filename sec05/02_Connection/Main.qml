import QtQuick

Window {
    visible: true; width: 100; height: 100

    Loader {
       id: myLoader
       source: "myitem.qml"
    }

    Connections {
        target: myLoader.item

        function onMessage(msg) {
            console.log(msg)
        }
    }
}
