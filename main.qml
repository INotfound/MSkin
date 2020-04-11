import QtQuick 2.6
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
        width: parent.width -1
        height: parent.height -1
        anchors.centerIn: parent
        MagicEdit {
           id: edit
           x: 281
           y: 426
           width: 180
           height: 35
           color: "#000000"
           font.family: "Courier"
           renderType: Text.NativeRendering
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
        }

        Image {
            id: image
            x: 608
            y: 0
            width: 18
            height: 17
            fillMode: Image.PreserveAspectFit
            source: "Image/title_button_close.png"
        }

    }

    function  test()
    {
        console.log("test ok! " + edit.text);
    }

}




