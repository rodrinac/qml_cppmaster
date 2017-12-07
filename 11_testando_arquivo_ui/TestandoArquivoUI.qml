import QtQuick 2.8
import QtQuick.Window 2.2

Window {
    title: "Aula 11 - Arquivo UI"
    visible: true
    width: 360; height: 480    

    // Aqui é usado instanciação direta, mas você pode
    // criar MainForm.qml e fazer a implementação lá
    MainForm {
        anchors.fill: parent
        mouseArea.onClicked: rectangle.color = Qt.rgba(Math.random(), Math.random(), Math.random(), 1)
    }
}
