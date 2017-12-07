import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    title: "Introdução à JavaScript"
    color: "black"
    width: 390; height: 580    
    visible: true

    property var initTime: new Date()

    Rectangle {        
        anchors.fill: parent
        anchors.margins: 10
        radius: 10

        Grid {
            id: grid

            anchors.centerIn: parent
            spacing: 5; columns: 5

            Repeater {
                model: 25

                ClickableSquare {
                    side: 45
                    color: "black"

                    onClicked: color = Qt.rgba(Math.random(), Math.random(), Math.random(), 1)

                    Text {
                        anchors.centerIn: parent
                        font.pointSize: 20
                        text: index + 1
                        color: "white"
                    }
                }
            }
        }        

        Row {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: grid.bottom
            anchors.topMargin: 10
            spacing: 5

            Repeater {
                model: ["black", "red", "green", "blue", "magenta"]

                ClickableSquare {
                    side: 45
                    color: modelData

                    onClicked: {
                        const size = grid.children.length - 1

                        for (var i = 0; i < size; ++i)
                            grid.children[i].color = color
                    }
                }
            }
        }
    }

    Component.onCompleted: console.log("App iniciado em", Qt.formatTime(initTime, "hh:mm:ss"))
}

