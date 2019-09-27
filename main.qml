import QtQuick 2.11
import QtQuick.Controls 2.4

ApplicationWindow {
    id:root
    visible: true
    //width: 400
    height: 640
    maximumWidth: 400
    minimumWidth: 400
    minimumHeight: 640
    title: qsTr("Tabs")

    StackView {
        id: mainStackViewid
        anchors.fill: parent
        initialItem: MainPage{}

    }



        /*
    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1Form {
        }

        Page2Form {
        }
    }
*/
        /*
    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Page 1")
        }
        TabButton {
            text: qsTr("Page 2")
        }
    }
    */
}
