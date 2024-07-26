import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root
    width: 200
    height: 350
    signal homePage()
    Rectangle{
        anchors.fill: parent
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        color: "#1a1a1c"
        border.color: "#565656"


        Text {
            id: text1
            x: 8
            y: 8
            color: "#ffffff"
            text: qsTr("Pump Control")
            font.pixelSize: 12
        }

        DNButton{
            x: 111
            y: 307
            text:"home"
            onClicked: {
                root.homePage()
            }
        }

    }

}
