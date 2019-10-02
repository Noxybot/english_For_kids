import QtQuick 2.0
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.11

Page {
    property alias  back_color: back.color
    property alias imgSrc: lessonImg.source

    background: Rectangle {
        id: back
        anchors.fill: parent
    }
    ColumnLayout {
        anchors.fill: parent
        Image {
            Layout.alignment: Qt.AlignCenter
            fillMode: Image.PreserveAspectFit
            Layout.preferredHeight: 300
            Layout.preferredWidth: 350
            id: lessonImg
        }
        RowLayout {
            Repeater {
                model: 3
                Rectangle {
                    width: 50
                    height: 50
                    radius: 7
                    color: "white"
                    border.width: 3
                    border.color: "#ce93d8"
                    TextInput {
                        anchors.fill: parent
                        font {
                            pixelSize: 40
                            color: "#6e608b"
                            family: "helvetica"
                            bold: true
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                        }
                    }
                }
            }

        }
    }

}
