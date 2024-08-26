import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    id: root
    width: 200
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

        Rectangle{
            height:20
            color: "#5b5b62"
            Layout.preferredHeight: 20
            Layout.fillWidth: true
            Text {
                anchors.fill: parent
                color: "#ffffff"

                text: qsTr("CABIN")
                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            }
            Rectangle{
                anchors.bottom: parent.bottom
                height: 1
                width: parent.width
                color: "#9d9d9d"

            }

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
            height:20
            color: "#5b5b62"
            Layout.preferredHeight: 20
            Layout.fillWidth: true
            Text {
                anchors.fill: parent
                id: text1
                color: "#ffffff"

                text: qsTr("BAT")
                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            }
            Rectangle{
                anchors.bottom: parent.bottom
                height: 1
                width: parent.width
                color: "#9d9d9d"

            }

        }

        Rectangle{
            id: rectangle
            Layout.fillWidth: true
            height: 220
            color: "#1a1a1c"
            Layout.preferredHeight: 250
            Layout.margins: 4
            Column{
                id: column
                ColumnLayout{
                    width:180
                    height:120

                    Rectangle{
                        id: rectangle1
                        color: "#1a1a1c"
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
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
                                    font.family: Constants.font.family
                                    text: qsTr("20.0 V")
                                    font.pixelSize: 14
                                    Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

                                }
                                Text {
                                    id: text3
                                    color: "#ffffff"

                                    text: qsTr("2.0 A")
                                    font.pixelSize: 14
                                    font.family: Constants.font.family
                                    Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

                                }
                                Text {
                                    id: text4
                                    color: "#ffffff"
                                    font.family: Constants.font.family
                                    text: qsTr("80 %")
                                    font.pixelSize: 14
                                    Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

                                }

                            }

                        }

                    }


                }
                RowLayout{
                    width:160
                    anchors.horizontalCenter: parent.horizontalCenter

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

            }


        }
        Rectangle{
            color: "#00ffffff"
            Layout.fillHeight: true
            Layout.fillWidth: true

        }


    }





}
