import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

ApplicationWindow {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("Tabs")

    header: ToolBar {
        contentHeight: toolButton.implicitHeight

        ToolButton {
            id: toolButton
            text: swipeView.depth > 1 ? "\u25C0" : "\u2630"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                if (swipeView.depth > 1) {
                    swipeView.pop()
                } else {
                    drawer.open()
                }
            }
        }

        Label {
            text: "text"
            anchors.centerIn: parent
        }
    }
    Drawer {
        id: drawer
        width: root.width * 0.44
        height: root.height

        Column {
            anchors.fill: parent
            Repeater {
                model: 5
                ItemDelegate {
                    text: qsTr("Page 1")
                    width: parent.width
                    onClicked: {
                        swipeView.nextItemInFocusChain()
                        drawer.close()
                    }
                }
            }
        }
    }
    SwipeView {
        id: swipeView
       // height: parent.header - parent.footer.height - parent.header.height
        anchors.fill: root
        Repeater {
            model: ListModel {
                ListElement {word: "apple"; file: "1.png"}
                ListElement {word: "house"; file: "2.png"}
                ListElement {word: "dog"; file: "3.png"}
                ListElement {word: "mouse"; file: "4.png"}
                ListElement {word: "bottle"; file: "5.png"}
            }
            ColumnLayout {
                spacing: 2
                //anchors.fill: root

                Rectangle {
                    Layout.fillHeight: true
                   // color: "transparent"
                    width: root.width / 2
                    height: root.height / 2
                    Text {
                        text: qsTr("" + word[0])
                            font.family: "Helvetica"
                            font.pointSize: 100
                            color: "green"
                            anchors.centerIn: parent
                    }
                }


                Rectangle {
                    Image {
                        source: "images/" + file
                        //anchors.fill: parent
                        //anchors.margins: 40
                      //  fillMode: Image.PreserveAspectFit
                        anchors.centerIn: parent
                        clip: true
                    }
                }

            Rectangle {
                RowLayout {
                   // Layout.fillWidth: true
                    Item {
                       // color: "transparent"
                        width: root.width / 2
                        height: root.height / 2
                        Text {

                            text: qsTr("" + word)
                            font.family: "Helvetica"
                            font.pointSize: 30
                            color: "green"
                            anchors.centerIn: parent

                        }
                    }
                    Item {
                        width: root.width / 2
                        height: root.height / 2
                        RoundButton {
                            id: play_but
                            anchors.fill: parent
                            background: Rectangle {
                                radius: play_but.radius
                                color: "transparent"
                            }
                            icon {
                                source:"images/play_but.png"
                                width: play_but.width
                                height: play_but.height
                            }
                            onClicked: console.log("click")
                        }
                    }

                }

}
            }
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        Repeater {
            model: 5
            TabButton {
                text: qsTr("Page " + index)
            }
        }


    }
}
