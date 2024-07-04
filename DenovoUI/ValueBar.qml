import QtQuick 2.15
import QtQuick.Controls 2.15
import DenovoUI

Item {
    id: root
    width: 160
    height: 45

    property string title: "title"
    property int minValue:0
    property int maxValue:100
    property int value: 10
    property int greenStart: 50
    property int greenEnd: 70
    property int yellowStart: 20
    property int yellowEnd: 50
    property int upperLimit: 70
    property int lowerLimit:20
    property string bg_color: "#4d4d4d"

    Rectangle{
        anchors.fill: parent
        color: DNConstants.bg_deep_dark

    }


    Rectangle {
        id: baseBar
        height: 10
        color: "#00000000"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.leftMargin: 10
        anchors.rightMargin: 30
        anchors.topMargin: 25
        Rectangle {
            anchors.left: parent.left
            anchors.right: parent.right
            height: 4
            color: "#e4e4e4"
            anchors.verticalCenter: parent.verticalCenter


        }
        Rectangle {
            id: greenBar
            height:4
            x:(greenStart-minValue)/(maxValue-minValue) * baseBar.width
            width:(greenEnd-greenStart)/(maxValue-minValue)* baseBar.width
            color: "#00ff2f"
            anchors.verticalCenter: parent.verticalCenter

        }
        Rectangle {
            id: yellowBar
            height:4
            x:(yellowStart-minValue)/(maxValue-minValue)  * baseBar.width
            width:(yellowEnd-yellowStart)/(maxValue-minValue)* baseBar.width
            color: "#fcff00"
            anchors.verticalCenter: parent.verticalCenter

        }

        Rectangle {
            id: upperLimitPointer
            height:8
            x:(upperLimit-minValue)/(maxValue-minValue)  * baseBar.width
            width:4
            color: "#ff0000"
            anchors.verticalCenter: parent.verticalCenter
            visible: upperLimit!= 0
        }

        Rectangle {
            id: lowerLimitPointer
            height:8
            x:(lowerLimit-minValue)/(maxValue-minValue) * baseBar.width
            width:4
            color: "#ff0000"
            anchors.verticalCenter: parent.verticalCenter
            visible: upperLimit!= 0
        }
        Image {
            id: indicator
            x: (value-minValue)/(maxValue-minValue)* baseBar.width
            y: -10
            width: 9
            height: 16
            source: "../../../Library/CloudStorage/OneDrive-個人/rockfish/UI/indicator.png"
            fillMode: Image.PreserveAspectFit
        }


    }


    Text {
        id: text1
        x: 9
        y: 0
        color: "#ffffff"
        text: title
        font.pixelSize: 12
    }

    Text {
        id: text2
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 5
        anchors.topMargin: 22
        color: "#ffffff"
        text: value
        font.pixelSize: 12
    }


}
