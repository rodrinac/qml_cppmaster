import QtQuick 2.10

Image {
    id: img

    property alias title: label.text
    property real size: 200

    fillMode: Image.PreserveAspectCrop

    height: size;  width: size
    antialiasing: true

    scale: marea.containsMouse? 1.15 : 1.0
    rotation: marea.containsMouse? 25 : 0
    z: marea.containsMouse? 1 : 0

    Behavior on scale { PropertyAnimation {} }
    Behavior on rotation { PropertyAnimation {} }
    Behavior on z { PropertyAnimation {} }

    Rectangle {
        antialiasing: true
        color: "#80051c17"
        width: parent.width
        height: label.implicitHeight
        anchors.bottom: img.bottom

        Text {
            id: label

            color: "white"
            width: parent.width
            horizontalAlignment: Qt.AlignHCenter
        }
    }

    MouseArea {
        id: marea

        anchors.fill: parent
        hoverEnabled: true
    }
}

