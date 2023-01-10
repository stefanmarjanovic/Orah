 import QtQuick
import QtQuick.Controls 2.5

Window {
    id: main
    width: 400
    height: 800
    visible: true
    title: qsTr("Orah")

    Text {
        id: welcome
        color: "#10624b"
        text: qsTr("ORAH")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.pixelSize: 30
        horizontalAlignment: Text.AlignHCenter
        anchors.rightMargin: 74
        anchors.leftMargin: 74
        anchors.bottomMargin: 407
        anchors.topMargin: 360
        font.styleName: "Semibold"
    }

    //Load different QML pages chronologically

    Loader {
        id: mainLoader
        anchors {
            left: parent.legt
            right: parent.right
            bottom: parent.bottom
        }
        focus: true
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {mainLoader.source = 'login.qml'}
    }


    Text {
        id: text1
        x: 132
        y: 393
        text: qsTr("Smart Home Electronics")
        font.pixelSize: 12
        color: "#10624b"
    }

    Text {
        id: text2
        y: 764
        text: qsTr("Powered by Orah Inc.")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        font.pixelSize: 12
        horizontalAlignment: Text.AlignHCenter
        anchors.rightMargin: 133
        anchors.leftMargin: 146
        anchors.bottomMargin: 21
        color: "#10624b"
    }

}
