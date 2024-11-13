import QtQuick

Window {
    visible: true; width: 300; height: 200
    id: relay

    signal msgReceived(string person, string notice)

    Component.onCompleted: {
        relay.msgReceived.connect(sendToPost)
        relay.msgReceived.connect(sendToEmail)
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
           relay.msgReceived("Kim Dae Jin", "Happy Birthday")
        }
    }

    Text {
        id: output1
        anchors.centerIn: parent
    }

    Text {
        id: output2
        anchors.top: output1.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

    function sendToPost(person, notice) {
        output1.text = "Post : " + person + " , " + notice
    }
    function sendToEmail(person, notice) {
        output2.text = "Email : " + person + " , " + notice
    }
}

