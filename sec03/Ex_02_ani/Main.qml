import QtQuick
import QtQuick.Window

Window {
    visible: true
    width: ani.width; height: ani.height + 8
    title: "AnimatedImage"

    AnimatedImage {
        id: ani
        source: "images/ani.gif"
    }

    Rectangle {
        property int frames: ani.frameCount
        width: 4; height: 8
        x: (ani.width - width) * ani.currentFrame / frames
        y: ani.height
        color: "red"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            if( ani.paused === true )
                ani.paused = false
            else
                ani.paused = true
        }
    }
}


