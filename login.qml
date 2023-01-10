    import QtQuick.Window 2.1
    import QtQuick 2.15
    import QtQuick.Layouts 1.3
    import QtQuick.Controls 2.5     // buttons
    import QtQuick.Controls.Material 2.0
    import QtQuick.Dialogs

    Window {
        id: loginPage
        visible: true
        width:  400
        height: 800
        title: qsTr("Orah")
        Material.theme: Material.Light
        Material.accent: Material.Green


            function validateLogin() {
                while (stefan.fail()) invalidLogin.visible = true
            }

            Loader {
                id: loginLoader
                anchors {
                    left: parent.legt
                    right: parent.right
                    bottom: parent.bottom
                }
                focus: true
            }


            Connections {
                target: stefan // user class
                //on successful login load page dashboard
                onSuccess: {
                    loginLoader.source = 'dashboard.qml'
                }
                //on failed login
                onFail: {
                       invalidLogin.open
                }
            }


            Image {
                id: image
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: columnLayout.top
                source: "images/cropped-logo-02-1.ico"
                anchors.bottomMargin: 0
                anchors.topMargin: 125
                anchors.leftMargin: 86
                anchors.rightMargin: 80
                fillMode: Image.PreserveAspectFit
            }

            ColumnLayout {
                id: columnLayout
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 80
                anchors.leftMargin: 86
                anchors.bottomMargin: 310
                anchors.topMargin: 399

                Row {
                    id: row1
                    Text {
                        id: emailLabel
                        width: 117
                        height: 38
                        color: "#10624b"
                        text: qsTr("Email:  ")
                        font.pixelSize: 15
                        horizontalAlignment: Text.AlignRight
                        font.bold: true
                        styleColor: "#10624b"
                    }

                    TextField {
                        id: emailInput
                        x: 94
                        width: 117
                        height: 38
                        font.pixelSize: 15
                        horizontalAlignment: Text.AlignLeft
                        overwriteMode: true
                        activeFocusOnPress: true
                        font.italic: false
                        selectionColor: "#10624b"
                    }
                }

                Row {
                    id: row2
                    Text {
                        id: passLabel
                        x: 0
                        y: 0
                        width: 117
                        height: 38
                        color: "#10624b"
                        text: qsTr("Password:  ")
                        font.pixelSize: 15
                        horizontalAlignment: Text.AlignRight
                        font.bold: true
                        styleColor: "#10624b"
                    }

                    TextField {
                        id: passInput
                        x: 118
                        y: 0
                        width: 117
                        height: 38
                        font.pixelSize: 15
                        horizontalAlignment: Text.AlignLeft
                        inputMask: ""
                        font.italic: false
                        selectionColor: "#10624b"
                        color: "green"
                        echoMode: TextInput.Password
                    }
                }
            }


            Button {
                id: loginButton
                x: 133
                y: 503
                width: 134
                height: 41
                contentItem: Text {             //contents of the button

                    color: "white"
                    text: "LOGIN"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.bold: false
                }
                background: Rectangle {         // background of the button
                    color: loginButton.down ?  "green":"#10624b"
                    radius: 5
                }
                onClicked: stefan.login(emailInput.text,passInput.text);
            }

            Text {
                id: passReset
                x: 104
                y: 562
                anchors {
                    top: loginButton.bottom
                    left: parent.left
                    right: parent.right
                    bottom: parent.bottom
                }
                color: "#1b21ed"
                text: qsTr("Forgot my password")
                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                anchors.rightMargin: 0
                anchors.bottomMargin: 234
                anchors.leftMargin: 0
                anchors.topMargin: 0
            }


            MessageDialog {
                id: invalidLogin
                 title: "Failed Login."
                 text: "Incorrect credentials. Please try again."
                 onAccepted: {
                     console.log("Failed login attempt.")
                     invalidLogin.visible = false
                 }
                 //Component.onCompleted: visible = false
            }

    }

