import QtQuick 2.12
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtGraphicalEffects 1.12
import "UI"
Window {
    id: root
    visible: true
    width: 640
    height: 480
    color: "#00000000"
    title: qsTr("Hello World")
    flags: Qt.Window|Qt.FramelessWindowHint

    MoveView{
        root: root
        id: moveView
        tilteHeight: 20
        color: "#FFFFFF"
        tilteColor: "#F1F1F1"
        width: parent.width
        height: parent.height
        anchors.centerIn: parent

        MagicEdit {
           id: edit
           x: 281
           y: 419
           width: 180
           height: 35
           color: "#000000"
           anchors.bottom: parent.bottom
           anchors.bottomMargin: 25
           anchors.right: parent.right
           anchors.rightMargin: 178
           font.pointSize: 12
        }

        MagicButton {
           id: button
           objectName: "nButton"
           width: 154
           height: 50
           anchors.bottom: parent.bottom
           anchors.bottomMargin: 18
           anchors.right: parent.right
           anchors.rightMargin: 18
           font.bold: true
           defaultColor: "#45BFE7"
           hoveredColor: "#3EBCDE"
           pressedColor: "#24ADD3"
           contentText{
               text: "定位"
           }
           onClicked: {
           }
        }

    }
}





/*##^##
Designer {
    D{i:2;anchors_height:370;anchors_width:601;anchors_x:20;anchors_y:20}
}
##^##*/
