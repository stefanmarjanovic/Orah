import QtQuick 2.15
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.3

Window {

    id: dashboard
    visible: true
    title: qsTr("Orah Electronics")
    width: 400
    height: 800

/*   StackView{

          anchors.fill: parent
          initialItem: login
    }
*/

    RowLayout {
        id: dashBar
        height: 194
        anchors {
            left: parent.left
            right: parent.right
            top: parent.top
        }


            Rectangle {
                id: rectangle1
                x: 0
                y: 0
                Material.theme: Material.Dark
                width: 400
                height: 800

                Rectangle {
                    id: rectangle
                    x: 0
                    y: 0
                    width: 400
                    height: 113
                    color: "#365d52"
                    radius: 1
                    border.color: "#a1365d52"
                    antialiasing: false
                    smooth: true
                    rotation: 0

                    Image {
                        id: image
                        x: 0
                        y: 0
                        width: 233
                        height: 97
                        source: "resources/logo-white-full-e1596453620674-400x114.png"
                        fillMode: Image.PreserveAspectFit
                    }
                }

                Image {
                    id: setting
                    x: 330
                    y: 141
                    width: 34
                    height: 39
                    source: "resources/setting.png"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: network
                    x: 235
                    y: 141
                    width: 44
                    height: 39
                    source: "resources/network.png"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: calendar
                    x: 142
                    y: 141
                    width: 45
                    height: 39
                    source: "resources/calendar.png"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: home
                    x: 41
                    y: 141
                    width: 42
                    height: 39
                    source: "resources/home.png"
                    fillMode: Image.PreserveAspectFit
                    MouseArea {
                        anchors.fill: parent
                        anchors.rightMargin: 32
                        anchors.bottomMargin: 0
                        anchors.leftMargin: -32
                        anchors.topMargin: 0
                        onClicked: container.clicked*(container.cellColor)
                    }
                }
        }
    }
}
