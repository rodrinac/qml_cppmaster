import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    id: root

    title: "QML - Signal & Handlers"
    color: "black"
    visible: true
    width: 450; height: 400    

    Grid {
        anchors.centerIn: parent
        columns: 2

        ClickableSquare { side: 100;    color: "red"; onClicked: root.color = color }
        ClickableSquare { side: 100;  color: "green"; onClicked: root.color = color }
        ClickableSquare { side: 100;   color: "blue"; onClicked: root.color = color }
        ClickableSquare { side: 100; color: "yellow"; onClicked: root.color = color }
    }
}
