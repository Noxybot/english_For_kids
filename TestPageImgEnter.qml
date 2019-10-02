import QtQuick 2.0
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.11

Page {
    property string rightWord
    property alias  back_color: back.color
    property alias imgSrc: lessonImg.source
    property var letters : ["", "", ""]
    background: Rectangle {
        id: back
        anchors.fill: parent
    }
    ColumnLayout {
        anchors.fill: parent
        Text {
            Layout.alignment: Qt.AlignHCenter
            id: name
            text: "Введите слово.\nОдна буква в одной клетке"
            color: "#6e608b"
            font.pixelSize: 25
            font.family: "helvetica"
            font.bold: true
            anchors.bottomMargin: 10
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        Image {
            Layout.alignment: Qt.AlignCenter
            fillMode: Image.PreserveAspectFit
            Layout.preferredHeight: 300
            Layout.preferredWidth: 350
            id: lessonImg
        }
        RowLayout {
            Layout.alignment: Qt.AlignHCenter
            Repeater {
                id: shittyID
                model: 3
                Rectangle {
                    width: 50
                    height: 50
                    radius: 7
                    color: "white"
                   // opacity: 0.7
                    border.width: 3
                    border.color: "#ce93d8"
                    TextInput {
                        onTextChanged: {
                            text = text.toUpperCase()
                            letters[modelData] = text
                            if (letters.join("") === rightWord) {
                                var i ;
                                for (i = 0; i < 3; ++i) {
                                    shittyID.itemAt(i).color = "green";
                                    shittyID.itemAt(i).opacity = 0.7;
                                }
                               shittyTimerID.start()
                                console.log("RIGHT")
                            }



                        }
                        verticalAlignment: Text.AlignVCenter
                        maximumLength: 1
                        anchors.margins: 5
                        anchors.fill: parent
                        color: "#6e608b"
                        font {
                            pixelSize: 40
                            family: "helvetica"
                            bold: true
                            }
                    }
                }
            }

        }
    }
    footer: Item {
        height: 50
    }

}
