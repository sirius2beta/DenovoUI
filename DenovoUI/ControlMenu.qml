import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts

Item {
    id: root
    width: 200
    height: 350
    Rectangle{
        anchors.fill: parent
        color: DNConstants.bg_deep_dark
        border.color: "#565656"


    }
    Column{
        anchors.top: parent.top
        anchors.topMargin: 10
        spacing: 10
        anchors.horizontalCenter: parent.horizontalCenter
        Row{
            spacing: 10
            MenuButton{
                imgsrc: "images/winch.png"
                text: "Winch"
            }
            MenuButton{
                imgsrc: "images/videocam.png"
                text: "Video"
            }
        }
        Row{
            spacing: 10
            MenuButton{
                imgsrc: "images/pump.png"
                text: "Pump"
            }
            MenuButton{
                imgsrc: "images/checklist.png"
                text: "Check"
            }
        }

    }








}
