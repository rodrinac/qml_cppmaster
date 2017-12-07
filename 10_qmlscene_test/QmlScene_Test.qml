import QtQuick 2.8
import QtQuick.Window 2.2

Window {
    title: "Aula 10 - QmlScene"
    visible: true
    width: 360; height: 480    

    Quadrado {
        anchors.centerIn: parent
        side: 250
        color: "black"
    }
}
