import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts

Item {
    id: root
    width: 175
    height: 300

    Rectangle{
        id: rectangle
        color: DNConstants.bg_deep_dark
        anchors.fill: parent

        ListModel {
            id: boatList
                ListElement {
                    boatname: "Red"
                    PIP: "192.168.0.10"
                    SIP: "100.105.122.84"
                    PIPConnected: false
                    SIPConnected: false
                    colorCode: "red"
                }

                ListElement {
                    boatname: "Green"
                    PIP: "192.168.0.10"

                    SIP: "100.105.122.84"
                    PIPConnected: false
                    SIPConnected: false
                    colorCode: "green"
                }
            }

        ListView {
            id: listView
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: addButton.top
            anchors.leftMargin: 10
            anchors.rightMargin: 10
            anchors.topMargin: 20
            anchors.bottomMargin: 10
            model: boatList
            delegate: Rectangle{
                width: parent.width
                height: 80
                color: "#303030"
                border.color: "#909090"

                RowLayout {
                    anchors.fill: parent
                    anchors.leftMargin: 4
                    anchors.rightMargin: 4
                    anchors.topMargin: 0
                    Row{
                        id: row1
                                spacing:5
                                Column{
                                    leftPadding: 5
                                    spacing: 3
                                    Text {
                                        width: 100
                                        color: "#ffffff"
                                        text: boatname
                                        font.pointSize: 16
                                    }
                                    Row{
                                        id: row
                                        spacing: 5
                                        Rectangle{
                                            width: 5
                                            height: 5
                                            anchors.verticalCenter: parent.verticalCenter

                                        }

                                        Text {
                                            width: 100
                                            color: "#ffffff"
                                            text: PIP
                                        }
                                    }

                                    Row{
                                        id: row2
                                        spacing: 5
                                        Rectangle{
                                            width: 5
                                            height: 5
                                            anchors.verticalCenter: parent.verticalCenter

                                        }

                                        Text {
                                            width: 100
                                            color: "#ffffff"
                                            text: SIP
                                        }
                                    }


                                }
                                Image {
                                    id: more_vert_24dp_E8EAED_FILL0_wght400_GRAD0_opsz24
                                    width: 20
                                    anchors.verticalCenter: parent.verticalCenter
                                    source: "images/vOption.svg"
                                    sourceSize.width: 27
                                    fillMode: Image.PreserveAspectCrop
                                }
                            }



                }

            }
        }

        DNButton {
            id: addButton
            showIcon: true
            text: ""
            y: 286
            height: 30
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.leftMargin: 5
            anchors.rightMargin: 5
            anchors.bottomMargin: 5
            icon.cache: false
            iconSource: "images/add.svg"
        }
    }





}
