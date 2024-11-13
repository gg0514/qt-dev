import QtQuick

Window {
    visible: true; width: 300; height: 200
    id: relay

    signal msgReceived(string person, string notice)

    // Window의 로딩이 끝나면
    Component.onCompleted: {
        // 시그널과 함수의 연결
        relay.msgReceived.connect(sendToPost)
        relay.msgReceived.connect(sendToEmail)
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
           // 마우스를 클릭하면 시그널 발생 
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

