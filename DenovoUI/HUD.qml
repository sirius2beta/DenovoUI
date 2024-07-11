import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts

Item {
    id: root
    width: 900
    height: 72
    Rectangle{
        id: rectangle3
        anchors.fill: parent
        color: DNConstants.bg_deep_dark
        border.color: DNConstants.bd_regular







        RowLayout {
            id: rowLayout
            anchors.fill: parent
            Column{
                id: column
                x: 21
                y: 14
                width: 95
                height: 43
                Layout.preferredWidth: 100
                spacing: 3
                Text {
                    id: text1
                    y: 15
                    color: "#bcbcbc"
                    text: "GS"
                    font.pixelSize: 14
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id: text2
                    y: 15
                    width: 70
                    color: "#ffffff"
                    text: "1.00 m/s"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                }

            }

            Rectangle {
                id: rectangle
                width: 1
                height: 45
                color: "#434343"
                Layout.preferredWidth: 1
            }

            Column {
                id: column1
                x: 126
                y: 14
                width: 95
                height: 43
                Layout.preferredWidth: 100
                spacing: 3
                Text {
                    id: text3
                    y: 15
                    color: "#bcbcbc"
                    text: "Distance"
                    font.pixelSize: 14
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    id: text4
                    y: 15
                    width: 70
                    color: "#ffffff"
                    text: "100 m"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }

            Rectangle {
                id: rectangle1
                width: 1
                height: 45
                color: "#434343"
                Layout.preferredHeight: 45
                Layout.preferredWidth: 1
            }

            Rectangle{
                Layout.fillWidth: true

            }

            Rectangle {
                id: rectangle2
                width: 1
                height: 45
                color: "#434343"
                Layout.preferredHeight: 45
                Layout.preferredWidth: 1
            }

            Column {
                id: column2
                x: 126
                y: 14
                width: 95
                height: 43
                spacing: 3
                Text {
                    id: text5
                    y: 15
                    color: "#bcbcbc"
                    text: "Depth"
                    font.pixelSize: 14
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    id: text6
                    y: 15
                    width: 70
                    color: "#ffffff"
                    text: "1.2 m"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Layout.preferredWidth: 100
            }

        }
        SlidingScale{
            opacity: 1
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.horizontalCenter: parent.horizontalCenter

        }


    }
}
