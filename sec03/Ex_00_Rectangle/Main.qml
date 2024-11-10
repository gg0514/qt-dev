import QtQuick

Window {
    visible: true
    width: 400
    height: 400
    title: "Rectangle"

    Rectangle {
        width: parent.width; height: parent.height
        color: "gray"

        Rectangle { // Top Rectangle
            x: 50; y: 50
            width: 300; height: 150
            color: "lightblue"

            Rectangle { // Nested Rectangle
                x: 50; y: 50
                width: 50; height: 50
                color: "white"
            }
        }

        Rectangle { // Bottom Rectangle
            x: 50; y: 200
            width: 300; height: 150
            color: "green"

            Rectangle { // Nested Rectangle
                x: 100; y: 50
                width: 150; height: 50
                color: "blue"
            }
        }
    }
}
