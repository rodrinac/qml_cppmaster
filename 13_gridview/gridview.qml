import QtQuick 2.10
import QtQuick.Window 2.10

Window {
    title: "12 - GridView"
    width: 660; height: 680
    visible: true

    Image {
        anchors.fill: parent

        fillMode: Image.Tile
        source: "boxed-bg.jpg"
    }

    GridView {
        id: view

        anchors.fill: parent
        cellWidth: 220
        cellHeight: 220

        model: CuteModel {}

        delegate: CuteDelegate {
            size: view.cellWidth
            src: model.src
            text: model.name
        }
    }
}
