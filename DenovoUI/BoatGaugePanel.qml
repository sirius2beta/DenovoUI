import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts

Item {
    id: root
    width: 175
    height: 400


    Rectangle{
        color: "#222224"
        anchors.fill: parent
        border.color: "#565656"

    }
    ColumnLayout {
        id: columnLayout
        anchors.fill: parent
        anchors.leftMargin: 4
        anchors.rightMargin: 4
        anchors.topMargin: 5
        spacing: 2
        Text{
            color: "#ffffff"
            text: "CABIN"
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

        }
        Rectangle{
            height: 1
            color: "#9d9d9d"
            Layout.fillWidth: true

        }
        ValueBar{
            title: "temperature"
            value: 25
            Layout.fillWidth: true


        }
        Rectangle{
            height: 1
            color: "#7c7c7c"
            Layout.fillWidth: true

        }

        ValueBar{
            title: "humidity"
            value: 75
            lowerLimit: 0
            upperLimit: 0
            greenStart: 20
            yellowEnd: 0
            yellowStart: 0
            Layout.fillWidth: true


        }
        Rectangle{
            height: 1
            color: "#7c7c7c"
            Layout.fillWidth: true

        }
        Rectangle{
            id: rectangle
            Layout.fillWidth: true
            height: 140
            color: "#00ffffff"
            Layout.margins: 4

            ColumnLayout{
                anchors.fill: parent
                Text {
                    id: text1
                    color: "#ffffff"

                    text: qsTr("BAT")
                    font.pixelSize: 12
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                }
                Rectangle{
                    height: 1
                    color: "#9d9d9d"
                    Layout.fillWidth: true

                }
                Rectangle{
                    id: rectangle1
                    color: DNConstants.bg_deep_dark
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    RowLayout{
                        height: 100
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        spacing: 10
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        Layout.fillWidth: true
                        BatteryBar{
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            noBattery: false

                        }

                        ColumnLayout{
                            Layout.fillWidth: false
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            Text {
                                id: text2
                                color: "#ffffff"

                                text: qsTr("20.0 V")
                                font.pixelSize: 14
                                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

                            }
                            Text {
                                id: text3
                                color: "#ffffff"

                                text: qsTr("2.0 A")
                                font.pixelSize: 14
                                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

                            }
                            Text {
                                id: text4
                                color: "#ffffff"

                                text: qsTr("80 %")
                                font.pixelSize: 14
                                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

                            }

                        }

                    }

                }


            }

        }
        RowLayout{
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: true


            BatteryBar{
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                percentage: 80
                noBattery: false
            }
            BatteryBar{
                percentage: 40
            }
            BatteryBar{

            }
            BatteryBar{

            }
        }
        Rectangle{
            color: "#00ffffff"
            Layout.fillHeight: true
            Layout.fillWidth: true

        }
    }





}
