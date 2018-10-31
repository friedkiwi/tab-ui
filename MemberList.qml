import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.4
import "controls"

Rectangle {
    color: "#002244"

    signal selected(string name)

    Component {
        id: memberEntry

        TqButton {
            onClicked: {
                selected(name)
            }
            width: memberGrid.cellWidth - 10
            height: memberGrid.cellHeight - 10
            text: name
        }
    }

    GridView {
        clip: true
        id: memberGrid
        cellWidth: 140
        cellHeight: cellWidth * (Math.sqrt(5) - 1) /2
        model: members
        delegate: memberEntry
        anchors.fill: parent
        anchors.leftMargin: 10
        anchors.topMargin: 10
    }
}
