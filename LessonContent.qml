import QtQuick 2.0
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.11

Page {
    property alias top_text: topTexID.text
    property alias bot_text: bottTextId.text
    property alias text_color: topTexID.color
    property alias img_source: lessonImageID.source
    property alias  back_color: back.color

    background: Rectangle {
        id: back
        anchors.fill: parent
    }

ColumnLayout{
    anchors.fill: parent
    spacing: 10


    Text {
        id: topTexID
        Layout.alignment: Qt.AlignCenter
        font.pixelSize: 56

    }
    Image {
        Layout.alignment: Qt.AlignCenter
        fillMode: Image.PreserveAspectFit
        Layout.preferredHeight: 300
        Layout.preferredWidth: 350
        id: lessonImageID
    }
    RowLayout {
        Layout.alignment: Qt.AlignCenter
        Text {
            id: bottTextId
            font.pixelSize: 36
            color: topTexID.color
        }
        Button {
            background: Rectangle {
                anchors.fill: parent
                color: "transparent"
            }

            width: icon.width
            height: icon.height
            icon.source: "images/play_button.png"
            icon.width: 24
            icon.height: 23
            Layout.topMargin: 5
        }

    }
}
footer: Item { width: root.width
     height: root.height / 6}

}

