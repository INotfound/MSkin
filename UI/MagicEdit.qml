import QtQuick 2.0
import QtQuick.Controls 2.5
import "Effects"

TextField{
    color: "#FFFFFF"
    property var position
    property var velocity:500
    property var lineHeight: 1
    property var lineFocusColor: "#5AAFF3"
    property var lineDefaultColor: "#E0E0E0"
    property var backgroundColor: "#00000000"
    selectByMouse:true
    selectionColor: "#87CEFA"
    selectedTextColor:color
    background: Rectangle{
        color: backgroundColor
        Rectangle {
            id:line
            height: lineHeight
            color: lineDefaultColor
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
        }
        Rectangle{
            id:lineFocus
            x:parent.x
            y:parent.y
            visible: false
            width: parent.width
            height: parent.height
            color: lineFocusColor
            anchors.bottom: parent.bottom
            ParallelAnimation{
                id:animBegin
                PropertyAnimation{
                    target: lineFocus
                    easing.type: Easing.OutQuart
                    properties: "x"
                    duration: velocity
                    to:line.x
                }
                PropertyAnimation{
                    target: lineFocus
                    easing.type: Easing.OutQuart
                    properties: "width"
                    duration: velocity
                    to:line.width
                }
            }
            ColorAnimation{
                id:animEnd
                target: lineFocus
                easing.type: Easing.OutQuart
                properties: "color"
                duration: 1000
                to:lineDefaultColor
                onStopped: {
                    lineFocus.visible = false
                }
            }
            function run(pos){
                animEnd.stop()
                animBegin.stop()
                lineFocus.x = pos
                lineFocus.width = 0
                lineFocus.height = lineHeight + 1
                lineFocus.color = lineFocusColor
                lineFocus.visible = true
                animBegin.start();
            }
            function stop(){
                lineFocus.height = lineHeight
                animEnd.start()
            }
        }
    }
    onPressed: {
        position = event.x
    }
    onFocusChanged: {
        focus ? lineFocus.run(position) : lineFocus.stop()
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2;anchors_width:200;anchors_x:8}D{i:1;anchors_height:18;anchors_width:121}
}
##^##*/
