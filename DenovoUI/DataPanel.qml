import QtQuick 2.15
import QtQuick.Controls 2.15
import Qt.labs.qmlmodels


Item {
    id: root
    width: 200
    height: 364
    Rectangle{
        id:background
        color: DNConstants.bg_deep_dark
        anchors.fill: parent
        border.color: "#565656"
    }
    Row{
        id: tab
        Rectangle{
            width: 40
            height: 20
            color: "#209fbc"
            border.color: "#ffffff"
            Text{
                color: "#ffffff"
                text:"Aqua"
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

        }
        Rectangle{
            width: 40
            height: 20
            color: "#209fbc"
            border.color: "#ffffff"
            Text{
                color: "#ffffff"
                text:"Cabin"
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
            }

        }
    }
    Rectangle{
        color: "#00ffffff"
        border.color: "#00000000"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: tab.bottom
        anchors.bottom: parent.bottom
        TableView{
            anchors.margins: 10
            anchors.fill: parent
            columnSpacing: 1
                rowSpacing: 1
                clip: true

                model: TableModel {
                    TableModelColumn { display: "name" }
                    TableModelColumn { display: "color" }

                    rows: [
                        {
                            "name": "cat",
                            "color": "black"
                        },
                        {
                            "name": "dog",
                            "color": "brown"
                        },
                        {
                            "name": "bird",
                            "color": "white"
                        }
                    ]
                }

                delegate: Rectangle {
                    color: "#00444444"
                    implicitWidth: 80
                    implicitHeight: 20

                    Text {
                        text: display
                        color: "#ffffff"
                        anchors.centerIn: parent
                    }
                }

        }


    }
}
