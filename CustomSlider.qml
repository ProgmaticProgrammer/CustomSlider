import QtQuick 2.0

Item {
    id: root
    width: 200
    height: 40

    Rectangle {
        id: _rectangleTrack
        width: 200
        height: 4
        color: "#222222"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    Rectangle {
        id: _rectangleScrubber
        width: parent.height / 2
        height: width
        color: "#eeeeee"
        radius: width / 2
        border.width: 2
        border.color: "#000000"
        anchors.verticalCenter: _rectangleTrack.verticalCenter

        MouseArea {
            id: mouseArea
            anchors.fill: parent

            drag.target: parent
            drag.minimumX: 0
            drag.maximumX: _rectangleTrack.width - _rectangleScrubber.width
        }
    }


}

/*##^##
Designer {
    D{i:3;anchors_height:100;anchors_width:100}
}
##^##*/
