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

        ListView {
            id: listView
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 10
            anchors.rightMargin: 10
            anchors.topMargin: 20
            anchors.bottomMargin: 20
            model: ListModel {
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
            delegate: Rectangle{
                width: parent.width
                height: 50
                color: "#6d6d6d"
                border.color: "#ff0000"

                RowLayout {
                    anchors.fill: parent
                    anchors.leftMargin: 4
                    anchors.rightMargin: 4
                    anchors.topMargin: 0




                                Column{
                                    spacing: 0
                                    Text {
                                        width: 100
                                        color: "#ffffff"
                                        text: boatname
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
                                Rectangle{
                                    width: 10
                                    height: 10
                                    Layout.fillHeight: false

                                }


                }

            }
        }
    }
}
