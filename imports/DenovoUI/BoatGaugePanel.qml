import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    property int batPercent: 0
    id: root
    width: 300
    height: 400
    Rectangle{
        color: "#222224"
        anchors.fill: parent
        border.color: "#565656"

    }

    ScrollView{
        anchors.fill: parent
        anchors.topMargin: 10
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        clip: true


        ColumnLayout {
            width:280
            id: columnLayout


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
                    anchors.horizontalCenter: parent.horizontalCenter
                    ColumnLayout{
                        width:250
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
                                    percentage: batPercent

                                }

                                ColumnLayout{
                                    Layout.fillWidth: false
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Text {
                                        id: text2
                                        color: "#ffffff"
                                        font.family: Constants.font.family
                                        text: DenovoBind.TBatVolt + " V"
                                        font.pixelSize: 14
                                        Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

                                    }
                                    Text {
                                        id: text3
                                        color: "#ffffff"

                                        text: DenovoBind.TBatCurrent + " A"
                                        font.pixelSize: 14
                                        font.family: Constants.font.family
                                        Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

                                    }
                                    Text {
                                        id: text4
                                        color: "#ffffff"
                                        font.family: Constants.font.family
                                        text: batPercent
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





}
