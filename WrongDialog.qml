import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.11


Popup {
    id: popID
    x: parent.width / 2 - 130;
    y: parent.height / 2 - 100;
    width: 260
    height: 100
    background: Rectangle {
        radius: 7
        height: parent.height
        color: "white"
        border.width: 3
        border.color: "#ce93d8"

    }
    ColumnLayout {
        anchors.fill: parent
        Text {
            color: "#6e608b"
            font.pixelSize: 20
            font.family: "helvetica"
            font.bold: true

            Layout.alignment: Qt.AlignHCenter
            horizontalAlignment:  Text.AlignHCenter
            text: "Неправильно.\nПопробуйте ещё раз."
        }

        MyButton {onClicked: popID.close(); Layout.alignment: Qt.AlignHCenter; text: "Ок"; prefWidth: 60; prefHeight: 30; textSize: 20}
    }
    onOpened:  {console.log("OPENED")}
}
