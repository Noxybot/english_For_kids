import QtQuick 2.0
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.11

Page {

    property alias  back_color: back.color
    property alias imageSrc: lessonImg.source
    property alias firstWrd: firstButt.text
    property alias secondWrd: secondButt.text
    property alias firstButID: firstButt
    property alias secondButID: secondButt

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
        MyButton {id: firstButt; }
        MyButton {id: secondButt;}
    }
    footer: Item {
       height: 70
    }

}
