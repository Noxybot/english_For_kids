import QtQuick 2.0
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.11

RoundButton {
    property int prefWidth: 170
    property int prefHeight: 70
    MouseArea {
       onClicked: parent.clicked()
       anchors.fill: parent
       id: areaID

   }
    //down: areaID.pressed
    onHoveredChanged: {areaID.cursorShape = Qt.PointingHandCursor}
    property alias textSize: itemID.font.pixelSize

    highlighted: true
    Layout.preferredHeight: prefHeight
    Layout.preferredWidth: prefWidth
    Layout.alignment:  Qt.AlignHCenter
    radius: 7
    //hoverEnabled: true
    contentItem: Text {
        id: itemID
        text: parent.text
        color: "#6e608b"
        font.pixelSize: 30
        font.family: "helvetica"
        font.bold: true
        anchors.bottomMargin: 10
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
   background: Rectangle {
               radius: parent.radius
               height: parent.height
               color: "white"
               border.width: 3
               border.color: "#ce93d8"


        }
}
