import QtQuick 2.6
import QtQuick.Window 2.2

Window {    
    title: "QML - Rectangle {}"
    color: "black"
    visible: true
    width: 320; height: 520

    Rectangle {
        anchors.fill: parent
        anchors.margins: 15
        radius: 10

        gradient: Gradient {
            GradientStop { position: 0.0;     color: "white" }
            GradientStop { position: 0.5;    color: "silver" }
            GradientStop { position: 1.0; color: "lightblue" }
        }

        Rectangle {
            anchors.centerIn: parent
            width: 200; height: 200
            radius: width / 2
            color: "black"
        }
    }
}
