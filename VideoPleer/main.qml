import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

ApplicationWindow {
    width: 640
    height: 480
    minimumWidth: 640
    minimumHeight: 480
    visible: true
    title: qsTr("Pleer")


    ColumnLayout{
        anchors.fill: parent
        spacing: 5

        Rectangle{
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.preferredHeight: parent.height
            Layout.minimumHeight: 150
            color: "#E5E7E9"
        }

        RowLayout{
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: parent.height
            Layout.maximumHeight: 50
            Layout.minimumHeight: 20
            width: parent.width


            Button{
                Layout.alignment: Qt.AlignCenter
                Layout.preferredWidth: parent.width * 0.19
                Layout.minimumWidth: 100
                Layout.fillHeight: true
                ToolTip.visible: hovered
                ToolTip.text: qsTr("PLAY")
                text: "▶️"
                palette.button: "#0078D7"
                palette.buttonText: "white"
                font.pixelSize: parent.height * 0.8
                font.family: "Arial"
                onClicked: model.revert()
            }

            Button{
                Layout.alignment: Qt.AlignCenter
                Layout.preferredWidth: parent.width * 0.19
                Layout.minimumWidth: 100
                Layout.fillHeight: true
                ToolTip.visible: hovered
                ToolTip.text: qsTr("PAUSE")
                text: "⏸️"
                palette.button: "#0078D7"
                palette.buttonText: "white"
                font.pixelSize: parent.height * 0.8
                font.family: "Arial"
                onClicked: model.revert()
            }

            Button{
                Layout.alignment: Qt.AlignCenter
                Layout.preferredWidth: parent.width * 0.19
                Layout.minimumWidth: 100
                Layout.fillHeight: true
                ToolTip.visible: hovered
                ToolTip.text: qsTr("STOP")
                text: "⏹"
                palette.button: "#0078D7"
                palette.buttonText: "white"
                font.pixelSize: parent.height * 0.8
                font.family: "Arial"
                onClicked: model.revert()
            }

            Button{
                Layout.alignment: Qt.AlignCenter
                Layout.preferredWidth: parent.width * 0.19
                Layout.minimumWidth: 100
                Layout.fillHeight: true
                ToolTip.visible: hovered
                ToolTip.text: qsTr("REWIND")
                text: "⏪️"
                palette.button: "#0078D7"
                palette.buttonText: "white"
                font.pixelSize: parent.height * 0.8
                font.family: "Arial"
                onClicked: model.revert()
            }

            Button{
                Layout.alignment: Qt.AlignCenter
                Layout.preferredWidth: parent.width * 0.19
                Layout.minimumWidth: 100
                Layout.fillHeight: true
                ToolTip.visible: hovered
                ToolTip.text: qsTr("F.FORWARD")
                text: "⏩️"
                palette.button: "#0078D7"
                palette.buttonText: "white"
                font.pixelSize: parent.height * 0.8
                font.family: "Arial"
                onClicked: model.revert()
            }
        }
        Slider{
            Layout.preferredWidth: parent.width
            Layout.fillHeight: true
            Layout.minimumHeight: 50
            Layout.minimumWidth: 350
        }
    }
}

