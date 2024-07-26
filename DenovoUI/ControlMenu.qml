import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    id: root
    width: 200
    height: 350

    SwipeView{
        id: swipeView
        anchors.fill: parent
        currentIndex: 0
        interactive: false
        Rectangle{
            width: 200
            height: 350
            color: "#1a1a1c"
            border.color: "#565656"
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
                        onClicked: swipeView.currentIndex = 1
                    }
                    MenuButton{
                        imgsrc: "images/videocam.png"
                        text: "Video"
                        onClicked: swipeView.currentIndex = 2
                    }
                }
                Row{
                    spacing: 10
                    MenuButton{
                        imgsrc: "images/pump.png"
                        text: "Pump"
                        onClicked: swipeView.currentIndex = 3

                    }
                    MenuButton{
                        imgsrc: "images/checklist.png"
                        text: "Check"
                        onClicked: swipeView.currentIndex = 4

                    }
                }

            }

        }
        WinchControl{
            onHomePage: swipeView.currentIndex = 0
        }
        VideoControl{
            onHomePage: swipeView.currentIndex = 0
        }
        PumpControl{
            onHomePage: swipeView.currentIndex = 0
        }
        CheckList{
            onHomePage: swipeView.currentIndex = 0
        }


    }


}

