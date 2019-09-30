import QtQuick 2.0
import QtQuick.Controls 2.4
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.11
import QtQuick 2.11
Page {
    id: lesAndTestID
    background: backID
    header: Item {
        width: parent.width
        height: parent.height / 5
        MyHeaderText {text: "Уроки"}
    }

    SwipeView {
        id: lessAndTestViewID
        anchors.fill: parent
            Repeater {
                model:  10
            GridLayout {
                columns: 2
                //spacing: -100
                Repeater {
                    model: [1, 1, 2, 2, 3, 3, 4, 4]
                    MyButton {text: ((index + 1) % 2 ? qsTr("Урок ") : qsTr("Тест ")) + modelData;
                            onClicked: mainStackViewid.push(Qt.createComponent("TestPage.qml"))
                            //Qt.createComponent("LessonPage.qml")
                    }
                }
            }

            }

        }

    footer: Item {
        width: root.width
        height: root.height / 6
        PageIndicator {
            id: pageIndicator
            interactive: true
            count: lessAndTestViewID.count
            currentIndex: lessAndTestViewID.currentIndex
            //anchors.bottom: parent.bottom
          //  anchors.horizontalCenter: parent.horizontalCenter
            anchors.centerIn: parent
            delegate: Rectangle {
                implicitWidth: 15
                implicitHeight: 15
                radius: width
                color: "white"
                opacity: index === pageIndicator.currentIndex ? 1 : pressed ? 1 : 0.5
                Behavior on opacity {
                    OpacityAnimator {
                        duration: 100
                    }


            }

        }
    }

}
}


