import QtQuick 2.0

Item {
    property var root
    property var defaultColor
    property var hoveredColor
    property var pressedColor

    Rectangle{
        id:spread
        radius: max/2
        visible: false
        x:root.width/2
        y:root.height/2
        width: defaultSize
        height: defaultSize
        color: defaultColor
        property var defaultSize: (max/2)/3
        property var max: Math.max(root.width,root.height)*2
        property var mouseX: 0
        property var mouseY: 0
        property var velocity:300
        SequentialAnimation{
            id:stopAnim
            ColorAnimation {
                easing.type: Easing.OutQuart
                target: spread
                properties:"color"
                to: root.color
                duration:500
             }
            onStopped: {
                spread.visible = false
            }
        }
        ParallelAnimation{
            id:anim
            PropertyAnimation {
                target: spread
                properties: "x"
                to: spread.mouseX - (spread.max/2)
                duration: spread.velocity
            }
            PropertyAnimation {
                target: spread
                properties: "y"
                to: spread.mouseY - (spread.max/2)
                duration: spread.velocity
            }

            PropertyAnimation {
                target: spread
                properties: "width"
                to:spread.max
                duration: spread.velocity
            }
            PropertyAnimation {
                target: spread
                properties: "height"
                to:spread.max
                duration: spread.velocity
            }

        }

    }

    function hover(){
        stopAnim.stop()
        root.color = hoveredColor
    }

    function exit(){
        root.color = defaultColor
    }

    function stop(){
        root.color = defaultColor
        stopAnim.start()
    }

    function run(px,py){
        stopAnim.stop()
        anim.stop();
        spread.mouseX = px
        spread.mouseY = py
        spread.visible = true
        spread.width = spread.defaultSize
        spread.height = spread.defaultSize
        spread.x = spread.mouseX-(spread.width/2)
        spread.y = spread.mouseY-(spread.height/2)
        spread.color = pressedColor
        anim.start()
    }
}
