import QtQuick 2.0

Rectangle {
    id: root

    property real side: 0.0
    signal clicked

    width: side
    height: side

    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked()
    }
}
