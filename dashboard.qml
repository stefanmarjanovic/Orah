import QtQuick 2.15
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.3

Rectangle {

    id: dashboard
    visible: true
    width: 400
    height: 800
    state: "Home"
/*   StackView{

          anchors.fill: parent
          initialItem: login
    }
*/

    //QML transitional states - toggle dashboard menu items
    states: [
        State {
            name: "Home"
        },
        State {
            name: "Schedule"
        },
        State {
            name: "Network"
        },
        State {
            name: "Settings"
        }
    ]

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
                        source: "images/logo-orah.png"
                        fillMode: Image.PreserveAspectFit
                    }
                }

                Image {
                    id: setting
                    x: 330
                    y: 141
                    width: 34
                    height: 39
                    source: "images/setting.png"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: network
                    x: 235
                    y: 141
                    width: 44
                    height: 39
                    source: "images/network.png"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: calendar
                    x: 142
                    y: 141
                    width: 45
                    height: 39
                    source: "images/calendar.png"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: home
                    x: 41
                    y: 141
                    width: 42
                    height: 39
                    source: "images/home.png"
                    fillMode: Image.PreserveAspectFit
                    MouseArea {
                        anchors.fill: parent
                        anchors.rightMargin: 0
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        onClicked: home.state = "Home"
                    }
                }
        }
    }
}
