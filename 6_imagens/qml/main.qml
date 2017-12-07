import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    id: root

    title: "Image {} e AnimatedImage {}"
    visible: true
    width: 640; height: 480

    Row {
        anchors.centerIn: parent
        spacing: 5

        Image {
            anchors.verticalCenter: parent.verticalCenter
            height: root.height / 2
            fillMode: Image.PreserveAspectFit
            source: "homem_de_ferro.jpg"
        }

        AnimatedImage {
            anchors.verticalCenter: parent.verticalCenter
            fillMode: Image.PreserveAspectFit
            source: "naruto.gif"

            // Exibe uma animação com o frame atual
            Rectangle {
                property int frames: parent.frameCount

                width: 4; height: 8
                x: (parent.width - width) * parent.currentFrame / frames
                y: parent.height
                color: "royalblue"
            }
        }
    }
}
