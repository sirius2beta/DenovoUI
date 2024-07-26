import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root
    width: 200
    implicitHeight: 720
    Rectangle{
        anchors.fill: parent
        color: "#1a1a1c"
        border.color: "#565656"

    }
    ControlMenu{
        id: controlMenu

    }
    DataPanel{
        id: dataPanel
        anchors.top: controlMenu.bottom
        anchors.bottom: parent.bottom

    }

}
