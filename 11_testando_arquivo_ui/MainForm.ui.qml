import QtQuick 2.8

Rectangle {
    property alias mouseArea: mouseArea

    width: 360
    height: 360
    property alias rectangle: rectangle

    MouseArea {
        id: mouseArea
        anchors.fill: parent

        Rectangle {
            id: rectangle
            x: 80
            y: 80
            width: 200
            height: 200
            color: "#a9f061"
            radius: 10
            border.width: 5
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
