import QtQuick 2.0
import QtQuick.Controls 2.4

ToolBar {
    BackToMenyDio {id: shittyDioID}

    property bool callDio: false

        property alias text: mainText.text
        contentHeight: toolButton.implicitHeight

        ToolButton {
            background: Rectangle {
                anchors.fill: parent
                color: "transparent"

            }
            MouseArea {
               onClicked: toolButton.clicked()
               anchors.fill: parent
               id: areaID

           }
            onHoveredChanged: {areaID.cursorShape = Qt.PointingHandCursor}
            onClicked: {
                if(callDio === true) {
                    shittyDioID.open()
                }
                else
                    mainStackViewid.pop()}
            //onPressed: {background.color = "grey"}
           // onCanceled: background.color = "transparent"
            id: toolButton
            contentItem: Text {
                text: qsTr("\u2b9c")
                color: "#6e608b"
                font.pixelSize: 30
                font.family: "helvetica"
                font.bold: true

            }
           // onClicked: {console.log("hey")}

        }
        Text {
            id: mainText
            //text: qsTr("Урок 1")
            anchors.centerIn: parent
            font.pixelSize: 30
            font.bold: true
            font.family: "helvetica"
            color: "#6e608b"
        }
        background: Rectangle {
            id:test

            anchors.fill: parent
            color: "white"
            border.width: 1
            border.color: "#ce93d8"
        }
    }
