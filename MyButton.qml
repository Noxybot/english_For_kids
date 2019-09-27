import QtQuick 2.0
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.11

RoundButton {
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
  // onClicked: {
  //     if (index == 1)
   //        Qt.quit();
   //    else
  //         mainStackViewid.push(Qt.createComponent("LessonsAndTestsPage.qml"))
  // }

}
