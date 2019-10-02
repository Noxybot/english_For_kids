import QtQuick 2.0
import QtQuick.Controls 2.4
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.11
Page {
    id: lessoncont
    background: Rectangle {
        anchors.fill: parent
        //color: lessonsViewID.currentItem.back_color
    }
    header: MyHeaderToolBar {text: "Урок 1"}
        SwipeView {
            anchors.fill: parent
            id: lessonsViewID
                Repeater {
                    model: ListModel {
                        ListElement {top_text1: "Aa"; back_color1: "#fccdd2";
                            bot_text1: "apple"; text_color1:"#f64c4c"; audio_source1: "audio/apple.mp3"
                            img_source1: "images/apple.png"}
                        ListElement {top_text1: "Cc"; back_color1: "#fef8a0";
                            bot_text1: "cheese"; text_color1:"#f68a1f"; audio_source1: "audio/cheese.mp3"
                            img_source1: "images/cheese.png"}
                        ListElement {top_text1: "Ee"; back_color1: "#f5f5f5";
                            bot_text1: "elephant"; text_color1:"#455a64"; audio_source1: "audio/elephant.mp3"
                            img_source1: "images/elephant.png"}
                        ListElement {top_text1: "Pp"; back_color1: "#ffebf1";
                            bot_text1: "pig"; text_color1:"#ea6bb1"; audio_source1: "audio/pig.mp3"
                            img_source1: "images/pig.png"}
                        ListElement {top_text1: "Tt"; back_color1: "#d3f3c2";
                            bot_text1: "turtle"; text_color1:"#62c73f"; audio_source1: "audio/turtle.mp3"
                            img_source1: "images/turtle.png"}

                    }
                    LessonContent{
                        top_text: top_text1
                        back_color:  back_color1
                        bot_text:  bot_text1
                        text_color: text_color1
                        img_source: img_source1
                        audio_source: audio_source1
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

