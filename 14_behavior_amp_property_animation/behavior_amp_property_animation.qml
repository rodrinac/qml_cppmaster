import QtQuick 2.10
import QtQuick.Window 2.10

Window {
    title: "14 - Behavior & PropertyAnimation"

    width: 660; height: 460
    visible: true

    Image {
        anchors.fill: parent

        fillMode: Image.Tile
        source: "boxed-bg.jpg"
    }

    GridView {
        id: view

        cellWidth: 200; cellHeight: 200
        anchors.fill: parent
        anchors.margins: 30

        model: CuteModel {}

        delegate: CuteDelegate {
            title: model.name
            source: model.src
        }
    }
}
