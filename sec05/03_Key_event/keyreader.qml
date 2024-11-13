import QtQuick

Item {
    Text {
        anchors.centerIn: parent
        id: myText
        font.pixelSize: 15
    }

    Item {
        focus: true

        Keys.onPressed: function(event) {
            myText.text = "Capture key: " + event.text
            event.accepted = true;
        }
    }
}
