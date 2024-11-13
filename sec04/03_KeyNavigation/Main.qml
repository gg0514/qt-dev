import QtQuick

Window {
    visible: true; width: 400; height: 200
    Rectangle {
        width: 400; height: 200; color: "black"
        Rectangle {
            id: leftRect
            x: 25; y: 25; width: 150; height: 150
            color: focus ? "red" : "darkred"
            KeyNavigation.right: rightRect
            // 여기서 의문인 것은 left, right를 바꾸니 동작 안한다.
            // KeyNavigation.left: leftRect
            focus: true
        }

        Rectangle {
            id: rightRect
            x: 225; y: 25; width: 150; height: 150
            color: focus ? "#00ff00" : "green"
            KeyNavigation.left: leftRect
            // 여기서 의문인 것은 left, right를 바꾸니 동작 안한다.
            //KeyNavigation.right: rightRect
        }
    }
}
