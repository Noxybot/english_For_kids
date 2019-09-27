import QtQuick 2.0
import QtGraphicalEffects 1.0

Text {
    id: esEng_txt
    anchors.centerIn: parent
    color: "white"
    horizontalAlignment:  Text.AlignHCenter
    text: qsTr(text)
    font.pixelSize: 50
    font.bold: true
    font.family: "helvetica"
    layer.enabled: true
            layer.effect: DropShadow {
                verticalOffset: 2
                horizontalOffset: -4
                color: "#aa000000"
                radius: 3
                samples: 7
            }
}
