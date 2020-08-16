import QtQuick 2.13
import QtQuick.Window 2.13

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    CustomSlider {
        id: slider
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    Text {
        id: value
        text: Number(slider.value).toLocaleString(Qt.locale("de_DE"))
        anchors.bottom: slider.top
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
