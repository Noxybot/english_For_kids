import QtQuick 2.0

import QtQuick.Controls 2.4
import QtQml 2.11

Page {
    header: MyHeaderToolBar {text: "Тест 1"}


    StackView {
        Connections {
          target: test.firstButID
          onClicked: {testStackID.push(Qt.createQmlObject("TestPageAudioChoose {id:test1; audioSrc:\"audio/elephant.mp3\";
                                                                                words: [\"turtle\", \"pig\", \"elephant\"]
                                                                                }", this, "TestPage.qml"))
          }
        }
        Connections {
           target: test1.firstButID
           onClicked: {testStackID.push(Qt.createQmlObject("TestPageImgEnter {back_color:\"ffebf1\"; imgSrc:\"images\pig.png\"
                                                                            }", this, "TestPage.qml"))}
       }
        id: testStackID
        anchors.fill: parent
        initialItem: TestPageImgChoose {id: test; back_color: "#ffebf1"; imageSrc: "images/apple.png";
                                        firstWrd: "apple"; secondWrd: "cheese";
                                       // firstButt.onClicked: Qt.createComponent("TestPageAudioChoose.qml")
                                        }
    }

}
