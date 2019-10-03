import QtQuick 2.0
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.11

Page {
    property string rightWord
    property alias  back_color: back.color
    property alias imageSrc: lessonImg.source
    property int textSize1: 30
    property var words
    property int prefHeight1: 40
    background: Rectangle {
        id: back
        anchors.fill: parent
    }
    ColumnLayout {
        spacing: 20
        anchors.fill: parent
        Text {
            Layout.alignment: Qt.AlignHCenter
            id: name
            text: "Что на картинке?"
            color: "#6e608b"
            font.pixelSize: 35
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
        Repeater {
            model: words
            MyButton {onClicked:{
                        if (text != rightWord)
                            wrongDioID.open();
                        else {
                            background.color = "green"
                            background.opacity = 0.7
                            myTimerID.start()
                        }
                             }
                id: butt; text: modelData;
                textSize: textSize1; prefHeight: prefHeight1}
        }
    }
    footer: Item {
       height: 70
    }

}
