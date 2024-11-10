import QtQuick

Window {
    title: "FontLoader"
    visible: true
    width: 200; height: 200

    Rectangle {
        width: parent.width
        height: parent.height

        FontLoader {
            id: myFont
            source: "fonts/NanumGothic.ttf"
        }

        Text {
            text: "Hello world.";
            font.family: myFont.name
            font.bold: true
            font.pixelSize: 20
            anchors.centerIn: parent
        }
    }
}
