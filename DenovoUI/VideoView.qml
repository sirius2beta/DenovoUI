import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root
    width: 640
    height: 480
    property int rollAngle: 0
    Rectangle{
        color: "#1a1a1c"
        anchors.fill: parent

    }
    Rectangle{
        id: rectangle
        width: 200
        height: 200
        color: "#00ffffff"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        Image {
            id: indicator2
            anchors.top: parent.top
            anchors.topMargin: 4
            source: "../../../DenovoUI/DenovoUI/images/indicator2.png"
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: indicator1
            anchors.top: parent.top
            anchors.topMargin: 0
            source: "../../../DenovoUI/DenovoUI/images/indicator1.png"
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
            Image {
                id: indicator3
                anchors.top: parent.top
                anchors.topMargin: 19
                source: "../../../DenovoUI/DenovoUI/images/indicator2.png"
                anchors.horizontalCenter: parent.horizontalCenter
                fillMode: Image.PreserveAspectFit
                transform: Rotation{origin.x:7.5; origin.y:6; angle:180}
            }
            transform: Rotation { origin.x: 221/2; origin.y: 128; angle: rollAngle}
        }
    }









}
