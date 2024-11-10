import QtQuick
import "content"

Window {
    title: "Simple Accessible"
    visible: true
    id: window; width: 300; height: 100
    color: "white"

    Column {
        id: column; spacing: 6; anchors.margins: 10;
        anchors.fill: parent
        width: parent.width

        Text {
            id : status; width: column.width
        }

        Row {
            spacing: 6
            Button {
                id: sendButton
                width: 100; height: 40; text: "Send"
                onClicked: { status.text = "Send button clicked" }
            }
            Button { id: discardButton
                width: 100; height: 40; text: "Discard"
                onClicked: { status.text = "Discard button clicked" }
            }
        }
    }
}
