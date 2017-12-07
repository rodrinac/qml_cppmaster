import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtQuick.Window 2.2

Window {
    id: root

    property var dataAtual: new Date()

    title: "9 - Timer {}"
    visible: true
    width: 380; height: 580

    Image {
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
        source: "red-moon.jpg"
    }

    Text {
        id: timeText

        anchors.horizontalCenter: parent.horizontalCenter
        y: 50; font.pointSize: 46
        color: "white"
        text: Qt.formatTime(dataAtual, "hh:mm:ss")
    }

    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: timeText.bottom
        font.pointSize: 11
        color: "white"
        text: dataAtual.toLocaleDateString(Qt.locale("pt_BR"))
    }

    Timer {
        running: true; repeat: true
        interval: 1000

        onTriggered: dataAtual = new Date()
    }

}
