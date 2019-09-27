import QtQuick 2.0
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.11

Page {
    id: mainId
    anchors.fill: parent
    background: Image {
        id: backID
        source: "images/background.jpg"
    }
    header: Item {
        width: root.width
        height: root.height / 2
        MyHeaderText {text: "Easy\nEnglish"}

    }

    footer:  Item {
        width: root.width
        height: root.height / 2
        ColumnLayout {
            anchors.fill: parent
            spacing: -100
            MyButton {text: qsTr("Начать"); onClicked: {mainStackViewid.push(Qt.createComponent("LessonsAndTestsPage.qml"))}}
            MyButton {text: qsTr("Выход"); onClicked: Qt.quit()}
    }


}
}
