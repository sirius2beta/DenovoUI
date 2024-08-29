import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    id: root
    width: 900
    height: 72
    property real dist: 0
    property real volt: 0
    property real amp: 0
    property string rtk: "0"
    Rectangle{
        id: rectangle3
        anchors.fill: parent
        color: "#1a1a1c"
        border.color: "#565656"






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
                    font.family: Constants.font.family
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
                    font.family: Constants.font.family
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
                    font.family: Constants.font.family
                    font.pixelSize: 14
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    id: text4
                    y: 15
                    width: 70
                    color: "#ffffff"
                    text: "100 m"
                    font.family: Constants.font.family
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
                id: column5
                x: 126
                y: 14
                width: 95
                height: 43
                spacing: 3
                Text {
                    id: rtk1
                    y: 15
                    color: "#bcbcbc"
                    text: "RTK"
                    font.family: Constants.font.family
                    font.pixelSize: 14
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    id: rtk2
                    y: 15
                    width: 70
                    color: "#ffffff"
                    text: {
                        if(rtk == "0"){
                            return "No GPS"
                        }else if(rtk == "1"){
                            return "No Fix"
                        }else if(rtk == "2"){
                            return "2D Fix"
                        }else if(rtk == "3"){
                            return "3D Fix"
                        }else if(rtk == "4"){
                            return "DGPS"
                        }else if(rtk == "5"){
                            return "RTK Float"
                        }else if(rtk == "6"){
                            return "RTK Fix"
                        }else if(rtk == "7"){
                            return "Static"
                        }else if(rtk == "8"){
                            return "PPP"
                        }else{
                            return "Err"
                        }
                    }

                    font.family: Constants.font.family
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Layout.preferredWidth: 100
            }

            Column {
                id: column4
                x: 126
                y: 14
                width: 95
                height: 43
                spacing: 3
                Text {
                    id: amp1
                    y: 15
                    color: "#bcbcbc"
                    text: "Current"
                    font.family: Constants.font.family
                    font.pixelSize: 14
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    id: amp2
                    y: 15
                    width: 70
                    color: "#ffffff"
                    text: parseFloat(amp)+" A"
                    font.family: Constants.font.family
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Layout.preferredWidth: 100
            }

            Column {
                id: column3
                x: 126
                y: 14
                width: 95
                height: 43
                spacing: 3
                Text {
                    id: volt1
                    y: 15
                    color: "#bcbcbc"
                    text: "Voltage"
                    font.family: Constants.font.family
                    font.pixelSize: 14
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    id: volt2
                    y: 15
                    width: 70
                    color: "#ffffff"
                    text: parseFloat(volt)+" v"
                    font.family: Constants.font.family
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Layout.preferredWidth: 100
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
                    font.family: Constants.font.family
                    font.pixelSize: 14
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    id: text6
                    y: 15
                    width: 70
                    color: "#ffffff"
                    text: dist+" m"
                    font.family: Constants.font.family
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
