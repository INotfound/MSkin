import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import "UI"
Window {
    id: root
    visible: true
    width: 640
    height: 480
    color: "#282E33"
    title: qsTr("Hello World")
    flags: Qt.Window|Qt.FramelessWindowHint
    MoveView{
        id: moveView
        root: root
        tilteHeight: 20
        tilteColor: "#3A4047"
        anchors.fill: parent
    }


    function  test()
    {
        console.log("test ok!");
    }

    MagicEdit {
        id: edit
        x: 146
        y: 163
        width: 180
        height: 35
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
        defaultColor: "#4888C0"
        hoveredColor: "#4F92C9"
        pressedColor: "#61A5DC"
    }
}



/*##^##
Designer {
    D{i:1;invisible:true}
}
##^##*/
