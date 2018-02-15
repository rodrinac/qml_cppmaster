import QtQuick 2.10

Item {
    id: root

    property alias src: img.source
    property alias text: label.text
    property int size

    height: size;  width: size

    Rectangle {
        id: rect

        anchors.fill: parent
        anchors.margins: 20
        color: "transparent"

        Image {
            id: img

            antialiasing: true
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
        }

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

    }

}

