import QtQuick 2.0

Item {
    id: root
    width: 200
    height: 40

    // debug
//    Rectangle {
//        anchors.fill: parent

//        border.color: "red"
//        border.width: 2
//    }

    property real value: 0.0
    property real minimumValue: 0.0
    property real maximumValue: 100.0

    BaseObject {
        id: _

        //readonly property int scrubberXPosition: (_rectangleTrack.width - _rectangleScrubber.width) * (root.value / (root.maximumValue - root.minimumValue))

        Connections {
            target: _rectangleScrubber
            onXChanged: {
//                console.debug("x:" + _rectangleScrubber.x)
                root.value = (_rectangleScrubber.x / (_rectangleTrack.width - _rectangleScrubber.width)* (root.maximumValue - root.minimumValue))
//                console.debug("value: "+root.value)
            }
        }

//        Binding {
//            target: root
//            property: "value"
//            value: (_rectangleScrubber.x / (_rectangleTrack.width - _rectangleScrubber.width)* (root.maximumValue - root.minimumValue))
//            when: !mouseArea.pressed
//        }
    }

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
        //x: _.scrubberXPosition


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
