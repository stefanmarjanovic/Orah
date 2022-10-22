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
        anchors.leftMargin: 73
        anchors.bottomMargin: 378
        anchors.topMargin: 379
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
        source:"login.qml"
    }


    BusyIndicator {
        id: busyIndicator
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 180
        anchors.leftMargin: 180
        anchors.bottomMargin: 427
        anchors.topMargin: 333
    }

}
