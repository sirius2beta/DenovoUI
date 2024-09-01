﻿import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtMultimedia 5.7

Item {
    id: root
    width: 900
    height: 72
    property real depth: 0
    property real volt: 0
    property real amp: 0
    property real temp: 0
    property real yaw: 0
    property real groundSpeed: 0
    property real distance:0
    property real gs:0
    property real dtm:0
    property string rtk: "0"

    Audio {
              id: alarmSound1
              source: "sound/warning1.mp3"
              loops: Audio.Infinite
              muted: !Constants.voltAlarm
    }

    Audio {
              id: alarmSound2
              source: "sound/alarm2.wav"
              loops: Audio.Infinite
              muted: !Constants.depthAlarm
    }
    
    Audio {
              id: alarmSound3
              source: "sound/alarm3.mp3"
              loops: Audio.Infinite
              muted: !Constants.cabinTAlarm
    }



    Rectangle{
        id: rectangle3
        anchors.fill: parent
        color: "#1a1a1c"
        border.color: "#565656"






        RowLayout {
            id: rowLayout
            anchors.fill: parent
            Column{
                id: column
                x: 21
                y: 14
                width: 95
                height: 43
                Layout.preferredWidth: 100
                spacing: 3
                Text {
                    id: text1
                    y: 15
                    color: "#bcbcbc"
                    font.family: Constants.font.family
                    text: "GS"
                    font.pixelSize: 14
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id: text2
                    y: 15
                    width: 70
                    color: "#ffffff"
                    text: gs+ " m/s"
                    font.family: Constants.font.family
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                }

            }

            Rectangle {
                id: rectangle
                width: 1
                height: 45
                color: "#434343"
                Layout.preferredWidth: 1
            }

            Column {
                id: column1
                x: 126
                y: 14
                width: 95
                height: 43
                Layout.preferredWidth: 100
                spacing: 3
                Text {
                    id: text3
                    y: 15
                    color: "#bcbcbc"
                    text: "Distance"
                    font.family: Constants.font.family
                    font.pixelSize: 14
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    id: text4
                    y: 15
                    width: 70
                    color: "#ffffff"
                    text: dtm+" m"
                    font.family: Constants.font.family
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }

            Rectangle {
                id: rectangle1
                width: 1
                height: 45
                color: "#434343"
                Layout.preferredHeight: 45
                Layout.preferredWidth: 1
            }

            Rectangle{
                Layout.fillWidth: true

            }

            Rectangle {
                id: rectangle2
                width: 1
                height: 45
                color: "#434343"
                Layout.preferredHeight: 45
                Layout.preferredWidth: 1
            }
            Rectangle {
                width: 1
                height: 45
                color: "#00000000"
                Layout.preferredHeight: 70
                Layout.preferredWidth: 95
                Column {
                    id: column5
                    y:10
                    width: 95
                    height: 43
                    spacing: 3
                    Text {
                        id: rtk1
                        y: 16
                        color: "#bcbcbc"
                        text: "RTK"
                        font.family: Constants.font.family
                        font.pixelSize: 16
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Text {
                        id: rtk2
                        y: 18
                        width: 70
                        color: "#ffffff"
                        text: {
                            if(rtk == "0"){
                                return "No GPS"
                            }else if(rtk == "1"){
                                return "No Fix"
                            }else if(rtk == "2"){
                                return "2D Fix"
                            }else if(rtk == "3"){
                                return "3D Fix"
                            }else if(rtk == "4"){
                                return "DGPS"
                            }else if(rtk == "5"){
                                return "RTK Float"
                            }else if(rtk == "6"){
                                return "RTK Fix"
                            }else if(rtk == "7"){
                                return "Static"
                            }else if(rtk == "8"){
                                return "PPP"
                            }else{
                                return "Err"
                            }
                        }

                        font.family: Constants.font.family
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        wrapMode: Text.WordWrap
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                    Layout.preferredWidth: 100
                }
            }

            Rectangle {
                width: 1
                height: 45
                color: temp>Constants.cabinTU?"#7cff0000":"#00000000"
                Layout.preferredHeight: 70
                Layout.preferredWidth: 95
                Column {
                    id: column4
                    y: 10
                    width: 95
                    height: 43
                    spacing: 3
                    Text {
                        id: temp1
                        y: 15
                        color: "#bcbcbc"
                        text: "Cabin Temp"
                        font.family: Constants.font.family
                        font.pixelSize: 16
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Text {
                        id: temp2
                        y: 15
                        width: 70
                        color: "#ffffff"
                        text: parseFloat(temp)+" C"
                        font.family: Constants.font.family
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        wrapMode: Text.WordWrap
                        anchors.horizontalCenter: parent.horizontalCenter
                        onTextChanged: {
                            if(temp>Constants.cabinTU ){
                                alarmSound3.play()
                            }else{
                                alarmSound3.stop()
                            }
                        }
                    }
                    
                    Layout.preferredWidth: 100
                }
                Popup{
                    id: popup2
                    y:parent.height
                    width:200
                    height:300
                    modal:true
                    focus: true
                    padding:0
                    leftInset: 0
                    AlarmSettings{
                        id:alarmsettings2
                        anchors.fill:parent
                        enableLower: false
                        upperValue: Constants.cabinTU
                        alarmOn: Constants.cabinTAlarm
                        onSave: {
                            Constants.cabinTU = upperValue
                            Constants.cabinTAlarm = alarmOn
                            popup2.close()
                        }
                    }



                }
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        popup2.open()
                    }
                }

            }

            Rectangle {
                width: 1
                height: 45
                color: volt<Constants.voltLL?"#66ff0000":"#00000000"
                Layout.preferredHeight: 70
                Layout.preferredWidth: 95


                Column {
                    id: column3
                    y: 10
                    width: 95
                    height: 60
                    spacing: 3
                    Layout.preferredWidth: 100
                    Text {
                        id: volt1
                        y: 16
                        color: "#bcbcbc"
                        text: "Voltage"
                        font.family: Constants.font.family
                        font.pixelSize: 16
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Text {
                        id: volt2
                        y: 18
                        width: 70
                        color: "#ffffff"
                        text: parseFloat(volt)+" v"
                        font.family: Constants.font.family
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        wrapMode: Text.WordWrap
                        anchors.horizontalCenter: parent.horizontalCenter
                        onTextChanged: {
                            if(volt<Constants.voltLL ){
                                alarmSound1.play()
                            }else{
                                alarmSound1.stop()
                            }
                        }
                    }



                }
                Popup{
                    id: popup
                    y:parent.height
                    width:200
                    height:300
                    modal:true
                    focus: true
                    padding:0
                    leftInset: 0
                    AlarmSettings{
                        id:alarmsettings
                        anchors.fill:parent
                        enableUpper: false
                        lowerValue: Constants.voltLL
                        alarmOn: Constants.voltAlarm
                        onSave: {
                            Constants.voltLL = lowerValue
                            Constants.voltAlarm = alarmOn
                            popup.close()
                        }
                    }



                }
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        popup.open()
                    }
                }
            }



            Rectangle {
                width: 1
                height: 45
                color: depth<Constants.depthLL?"#7bffe000":"#00000000"
                Layout.preferredHeight: 70
                Layout.preferredWidth: 95
                Column {
                    id: column2
                    y: 10
                    width: 95
                    height: 43
                    spacing: 3
                    Text {
                        id: text5
                        y: 16
                        color: "#bcbcbc"
                        text: "Depth"
                        font.family: Constants.font.family
                        font.pixelSize: 14
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Text {
                        id: text6
                        y: 15
                        width: 70
                        color: "#ffffff"
                        text: depth+" cm"
                        font.family: Constants.font.family
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        wrapMode: Text.WordWrap
                        anchors.horizontalCenter: parent.horizontalCenter
                        onTextChanged: {
                            if(depth<Constants.depthLL ){
                                alarmSound2.play()
                            }else{
                                alarmSound2.stop()
                            }
                        }
                    }
                    Layout.preferredWidth: 100
                }
                Popup{
                    id: popup3
                    y:parent.height
                    width:200
                    height:300
                    modal:true
                    focus: true
                    padding:0
                    leftInset: 0
                    AlarmSettings{
                        id:alarmsettings3
                        anchors.fill:parent
                        enableUpper: false
                        lowerValue: Constants.depthLL
                        alarmOn: Constants.depthAlarm
                        onSave: {
                            Constants.depthLL = lowerValue
                            Constants.depthAlarm = alarmOn
                            popup3.close()
                        }
                    }



                }
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        popup3.open()
                    }
                }

            }
        }


        SlidingScale{
            opacity: 1
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.horizontalCenter: parent.horizontalCenter
            currentHeading: yaw

        }


    }
}
