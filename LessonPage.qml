import QtQuick 2.0
import QtQuick.Controls 2.4
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.11
Page {
    //anchors.fill: parent
    id: lessoncont
   // z: -1
    background: Rectangle {
        anchors.fill: parent
        //color: lessonsViewID.currentItem.back_color
    }
    header: ToolBar {
        contentHeight: toolButton.implicitHeight

        ToolButton {
            background: Rectangle {
                anchors.fill: parent
                color: "transparent"

            }
            onClicked: mainStackViewid.pop()
            onPressed: {background.color = "grey"}
            onCanceled: background.color = "transparent"
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
           // id: name
            text: qsTr("Урок 1")
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
        SwipeView {
            anchors.fill: parent
            id: lessonsViewID
                Repeater {
                    model: ListModel {
                        ListElement {top_text1: "Aa"; back_color1: "#fccdd2";
                            bot_text1: "apple"; text_color1:"#f64c4c";
                            img_source1: "images/apple.png"}
                        ListElement {top_text1: "Cc"; back_color1: "#f9a636";
                            bot_text1: "cheese"; text_color1:"#f68a1f";
                            img_source1: "images/cheese.png"}
                        ListElement {top_text1: "Ee"; back_color1: "#f5f5f5";
                            bot_text1: "elephant"; text_color1:"#455a64";
                            img_source1: "images/elephant.png"}
                        ListElement {top_text1: "Pp"; back_color1: "#ffebf1";
                            bot_text1: "pig"; text_color1:"#ea6bb1";
                            img_source1: "images/pig.png"}
                        ListElement {top_text1: "Tt"; back_color1: "#d3f3c2";
                            bot_text1: "turtle"; text_color1:"#62c73f";
                            img_source1: "images/turtle.png"}

                    }
                    LessonContent{
                        top_text: top_text1
                        back_color:  back_color1
                        bot_text:  bot_text1
                        text_color: text_color1
                        img_source: img_source1
                    }
                }


        }
        PageIndicator {

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 40
            id: pageIndicator1
            interactive: true
            count: lessonsViewID.count
            currentIndex: lessonsViewID.currentIndex
            delegate: Rectangle {
                border {color: "grey"; width: 1}
                implicitWidth: 15
                implicitHeight: 15
                radius: width
                color: "white"
                opacity: index === pageIndicator1.currentIndex ? 1 : pressed ? 1 : 0.5
            }

        }

}

