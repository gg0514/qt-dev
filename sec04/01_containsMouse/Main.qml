import QtQuick

Window { // Case - 1
    visible: true
    width: 200
    height: 200

    Rectangle {
        width: 200; height: 200; color: "lightblue"
        Rectangle {
            x: 50; y: 50; width: 100; height: 100
            color: mouseArea.containsMouse ? "green" : "white"

            MouseArea {
                id: mouseArea
                anchors.fill: parent;
                hoverEnabled: true
            }
        }
    }
}

/*
Window { // Case - 2
    visible: true; width: 200;  height: 200
    Rectangle {
        width: 200; height: 200; color: "lightblue"
        Rectangle {
            id: rect; x: 50; y: 50; width: 100; height: 100; color: white
            MouseArea {
                id: myArea
                anchors.fill: parent;
                hoverEnabled: true

                onEntered: {
                    rect.color = "green"
                }
                onExited: {
                    rect.color = "white"
                }
            }
        }
    }
}
*/

/*
Window { // Case - 3
    visible: true; width: 200;  height: 200
    Rectangle {
        width: 200; height: 200; color: "lightblue"
        Rectangle {
            id: rect
            x: 50; y: 50; width: 100; height: 100;
            color: "white"
            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                onClicked: (mouse) => {
                    if (mouse.button === Qt.RightButton)
                        parent.color = 'blue';
                    else
                        parent.color = 'red';
                }
            }
        }
    }
}
*/


















