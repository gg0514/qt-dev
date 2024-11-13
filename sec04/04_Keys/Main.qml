import QtQuick

Window {
    visible: true; width: 240; height: 200
    Rectangle {
        width: 230; height: 190; color: "white"
        Image {
            id: logo; x: 30; y: 30
            source: "images/qtlogo.png"
            transformOrigin: Item.Center
            //transformOrigin: Item.Left
        }
        Keys.onPressed: (event) => {
            if (event.key === Qt.Key_Left) {
                logo.rotation = (logo.rotation - 10) % 360
            } else if (event.key === Qt.Key_Right) {
                logo.rotation = (logo.rotation + 10) % 360
            }
        }
        focus: true
    }
}
