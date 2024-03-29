import QtQuick 2.0
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.11
import QtMultimedia 5.11

Page {
    property alias top_text: topTexID.text
    property alias bot_text: bottTextId.text
    property alias text_color: topTexID.color
    property alias img_source: lessonImageID.source
    property alias  back_color: back.color
    property alias  audio_source: audioID.source
    property alias back_opacity: back.opacity
    background: Rectangle {
        id: back
        //opacity: 0
        anchors.fill: parent
    }
    Audio {
        //onPlaying:  {}
        id: audioID
        autoLoad: true
        onPlaying: {console.log("playing")}
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
           MyPlayButton {onClicked: audioID.play()}

    }
}
footer: Item { width: root.width
     height: root.height / 6}

}

