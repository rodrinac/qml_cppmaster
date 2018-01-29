import QtQuick 2.10
import QtQuick.Window 2.10

Window {
    title: "Intro. a Model/View/Delegate" 
    width: 360; height: 600
    visible: true
    color: "black"

    Rectangle {
        id: root
        anchors.fill: parent
        anchors.margins: 10

        ListView {
            anchors.fill: parent
            focus: true

            highlight: Rectangle { color: "lightblue" }

            model: ListModel {
                ListElement { nome: "Mark Zuckerberg"; telefone: "9141-4151" }
                ListElement { nome: "Bill Gates"; telefone: "4157-4125" }
                ListElement { nome: "Steve Jobs"; telefone: "3321-7415" }
            }

            delegate: Item {
                height: 40; width: root.width

                Column {
                    Text { text: "<b>Nome:</b>" + nome }
                    Text { text: "<b>Telefone:</b>" + telefone }
                }
            }
        }
    }
}
