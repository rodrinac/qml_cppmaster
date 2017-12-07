import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    title: "1ª Aplicação"    
    width: 350; height: 400
    visible: true
    color: mouseArea.pressed ? "royalblue" : "lightgray"

    property int contador: 0

    Text {
        text: "Total de cliques: " + contador
        anchors.centerIn: parent
        font { pointSize: 14; bold: contador > 5 }
    }

    MouseArea {
        id: mouseArea

        anchors.fill: parent
        onClicked: ++contador
    }
}
