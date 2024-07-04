import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts

Item {
    id: root
    width: 175
    height: 300
    signal nextPage()

    Rectangle{
        color: "#222224"
        anchors.fill: parent
        border.color: "#565656"

        ColumnLayout {
            id: columnLayout
            anchors.fill: parent
            anchors.leftMargin: 15
            anchors.rightMargin: 14
            anchors.topMargin: 10
            anchors.bottomMargin: 10
            Rectangle {
                id: rectangle

                height:40
                color: DNConstants.bg_deep_dark
                Layout.fillWidth: true
                Image {
                    id: boat
                    width: 34
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.margins: 5
                    source: "images/boat.png"
                    fillMode: Image.PreserveAspectFit
                }
                Text {
                    id: text1
                    x: 39
                    width: 116
                    color: "#f3f3f3"
                    text: qsTr("BoatName")

                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom

                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
            Text {
                id: text2
                color: "#f3f3f3"
                text: qsTr("Links")


                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            Rectangle{
                implicitHeight:50
                Layout.fillWidth:true
                color: DNConstants.bg_deep_dark
                border.color: "#565656"
                ColumnLayout{
                    anchors.fill: parent
                    anchors.topMargin: 2
                    anchors.bottomMargin: 2
                    spacing: 2
                    RowLayout {
                        id: rowLayout
                        spacing: 11
                        Layout.rightMargin: 10
                        Layout.leftMargin: 10
                        Layout.fillHeight: true
                        Layout.fillWidth: true

                        Rectangle{
                            width: 5
                            height: 14

                        }
                        Text {
                            color: "#1dd83b"
                            text: qsTr("P")
                            font.pixelSize: 12
                        }
                        Text {
                            color: "#ffffff"
                            text: qsTr("192.168.0.11")
                            font.pixelSize: 14
                        }
                    }
                    RowLayout {
                        id: rowLayout2
                        spacing: 11
                        Layout.rightMargin: 10
                        Layout.leftMargin: 10
                        Layout.fillHeight: true
                        Layout.fillWidth: true

                        Rectangle{
                            width: 5
                            height: 14

                        }
                        Text {
                            color: "#1dd83b"
                            text: qsTr("P")
                            font.pixelSize: 12
                        }
                        Text {
                            color: "#ffffff"
                            text: qsTr("192.168.0.11")
                            font.pixelSize: 14
                        }
                    }
                }


            }
            Text {
                id: text3
                color: "#f3f3f3"
                text: qsTr("Status")


                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            Rectangle{
                implicitHeight:100
                Layout.fillWidth:true
                color: DNConstants.bg_deep_dark
                border.color: "#565656"
            }
            Rectangle{
                id: rectangle1
                Layout.fillWidth:true
                color: "#00000000"
                Layout.fillHeight: true
                DNButton {
                    id: dNButton2

                    width: 46
                    height: 25
                    icon.color: "#ffffff"
                    icon.source: "images/power.png"
                    text:""
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 50
                    anchors.bottomMargin: 0
                    onClicked: {
                        root.nextPage()
                    }

                }
                DNButton {
                    id: dNButton
                    x: 85
                    y: 5

                    width: 46
                    height: 25
                    icon.color: "#ffffff"
                    icon.source: "images/power.png"
                    text:""
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    anchors.bottomMargin: 0

                }

            }







        }





    }


}
