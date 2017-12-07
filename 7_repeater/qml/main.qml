import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    title: "Repeater {}"
    color: "black"
    visible: true
    width: 400; height: 520

    Rectangle {
        anchors.fill: parent
        anchors.margins: 10
        radius: 10

        Grid {
            anchors.centerIn: parent
            spacing: 5; columns: 5

            Repeater {
                model: 25

                ClickableSquare {
                    side: 45
                    color: "black"

                    Text {
                        anchors.centerIn: parent
                        font.pointSize: 20
                        text: index + 1
                        color: "white"
                    }
                }
            }
        }
    }
}
