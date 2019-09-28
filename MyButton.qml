import QtQuick 2.0
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.11

RoundButton {
    onPressed: background.color = "grey"
    onReleased: { background.color = "white"; console.log("released")}
   // onToggled: background.color = "white"
    onCanceled: background.color = "white"
    highlighted: true
    Layout.preferredHeight: 70
    Layout.preferredWidth: 170
    Layout.alignment:  Qt.AlignHCenter
    radius: 7
    contentItem: Text {
        text: parent.text
        color: "#6e608b"
        font.pixelSize: 30
        font.family: "helvetica"
        font.bold: true
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
