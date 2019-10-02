import QtQuick 2.0
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.11
import QtMultimedia 5.11

Page {

    property alias  back_color: back.color
    property alias audioSrc: someShittyAudioID.source
    property var words
    Audio {
        id: someShittyAudioID
    }


    background: Rectangle {
        id: back
        anchors.fill: parent
    }
    ColumnLayout {
        spacing: 15
        anchors.fill: parent
        Text {
                Layout.alignment: Qt.AlignCenter
                text: "Нажми на значок\nЧто говорят?"
                color: "#6e608b"
                font.pixelSize: 30
                font.family: "helvetica"
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        MyPlayButton {
            Layout.preferredHeight: 250
            Layout.preferredWidth: 300
            Layout.alignment: Qt.AlignCenter
            onClicked: someShittyAudioID.play()
                icon {
                    width: 300
                    height: 250
                }
        }
        Repeater {
            model: words
            MyButton { text: modelData; textSize: 20; id: firstButt;  Layout.preferredHeight: 40}

        }

    }
    footer: Item {
       height: 70
    }



}
