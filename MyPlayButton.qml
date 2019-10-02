import QtQuick 2.0
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.11

Button {

    background: Rectangle {
        anchors.fill: parent
        color: "transparent"
    }
    MouseArea {
       onClicked: parent.clicked()
       anchors.fill: parent
       id: areaID

   }
    down: areaID.pressed
    onHoveredChanged: {areaID.cursorShape = Qt.PointingHandCursor}

    width: icon.width
    height: icon.height
    icon.source: "images/play_button.png"
    icon.width: 24
    icon.height: 23
    Layout.topMargin: 5



}
