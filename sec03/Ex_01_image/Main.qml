import QtQuick

Window {
    visible: true
    width: 300; height: 250
    title: "Image type"

    Rectangle
    {
        width: 300; height: 250
        color: "white"

        Image {
            x: 10; y: 10
            source: "images/qtlogo.png"
        }
    }
}
