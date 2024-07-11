// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.7
import DenovoUI

Window {
    id: window
    width: 1280
    height: 720

    visible: true
    title: "DenovoUI"

    Rectangle{
        anchors.fill: parent
        color: DNConstants.bg_deep_dark

    }

    StatusView{
        id: statusView
        width: 175
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: statusBar.top


    }

    ControlView{
        id: controlView
        x: 1080
        width: 200
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: statusBar.top
    }

    StatusBar{
        id: statusBar
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        height:20

    }

    CentralView{
        anchors.top: parent.top
        anchors.left: statusView.right
        anchors.right: controlView.left
        anchors.bottom: statusBar.top

    }

}

