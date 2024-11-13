import QtQuick

Window {
    visible: true; width: 640; height: 480

    Rectangle {
        width: 640; height: 480

        Flickable {
            id: view
            anchors.fill: parent
            contentWidth: picture.width // 1920
            contentHeight: picture.height // 1200

            Image {
                 id: picture
                 source: "images/background.jpg"
            }
         }
    }
}
