import QtQuick 2.0

import QtQuick.Controls 2.4
import QtQml 2.11

Page {
    header: MyHeaderToolBar {text: "Тест 1"; callDio: true}


    SwipeView {

        Timer {
            id: myTimerID
            repeat: false
            interval: 2000
            onTriggered: testSwipeViewID.incrementCurrentIndex()
        }
        Timer {
            id: shittyTimerID
            interval: 2000
            onTriggered: mainStackViewid.pop()
        }

        id: testSwipeViewID
       anchors.fill: parent
       TestPageAudioChoose {audioSrc: "audio/cheese.mp3"; words: ["apple", "cheese"];
           textSize1: 30; prefHeight1: 55; rightWord: "cheese"}
       TestPageImgChoose {back_color: "#ffebf1"; imageSrc: "images/apple.png"; words: ["apple", "pig"];
           textSize1: 30; prefHeight1: 55; rightWord: "apple"}
       TestPageAudioChoose {audioSrc: "audio/elephant.mp3"; words: ["turtle", "pig", "elephant"];
           textSize1: 25; prefHeight1: 50; rightWord: "elephant"}
       TestPageImgEnter {back_color: "#ffebf1"; imgSrc: "images/pig.png";rightWord: "PIG"}
       WrongDialog{id: wrongDioID}


}
}
