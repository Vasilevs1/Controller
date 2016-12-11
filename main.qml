import QtQuick 2.5
import QtQuick.Controls 2.0
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.3
ApplicationWindow {
    visible: true
    width: 1280
    height: 720

    StackLayout {
        id: swapView
        anchors.fill: parent
        Image {
            id: fc
            source: "FilledCircle.png"
            anchors.centerIn: parent

            RowLayout {
                anchors.verticalCenterOffset: 0
                anchors.horizontalCenterOffset: 15
                anchors.centerIn: parent
                Dial {
                    id: dial1
                    Layout.preferredHeight: 190
                    Layout.preferredWidth: 190
                    visible: true
                }

                Dial {
                    id: dial2
                    Layout.preferredHeight: 190
                    Layout.preferredWidth: 190
                }

                Dial {
                    id: dial3
                    Layout.preferredHeight:190
                    Layout.preferredWidth:190
                }
            }
        }
        TextField
        {
            text: "Info"
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 16
            font.family: "Times New Roman"
        anchors.centerIn: parent

    }
    }
    TabBar
    {
        id:tabB

        onCurrentIndexChanged: swapView.currentIndex = tabB.currentIndex
        TabButton
        {

            text: qsTr("Control")
            antialiasing: true
        }
        TabButton
        {
            text: qsTr("Info")
        }
    }
}
