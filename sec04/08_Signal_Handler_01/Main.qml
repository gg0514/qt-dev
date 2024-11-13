import QtQuick
import "content"

Window {
    visible: true; width: 300; height: 300

    SquareButton
    {
        id: sb
        width: 300; height: 300
        property string msg: ''

        // Slot Method 1
        onActivated: function(xPosition, yPosition) {
            myText = 'position : ' + xPosition + ', ' + yPosition
        }

        // Slot Method 2
        // You can also use it like this
        Connections {
            function onActivated(xPosition, yPosition) {
                sb.myText = 'Position : ' + xPosition + ', ' + yPosition
            }
        }

        onDeactivated: myText = "Deactivated!"
    }
}

