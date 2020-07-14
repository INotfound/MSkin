import QtQuick 2.0
import QtQuick.Controls 2.5
import QtGraphicalEffects 1.12
import "Effects"

Button{
    id:button
    clip: true
    property alias contentText: content
    property alias defaultColor: diffusion.defaultColor
    property alias hoveredColor: diffusion.hoveredColor
    property alias pressedColor: diffusion.pressedColor

    contentItem: Text {
        id:content
        color: "#FFFFFF"
        font.bold: true
        font.pointSize: 15
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter

    }
    background: Rectangle{
        radius: 2
        color: defaultColor
        Rectangle{
            clip:true
            anchors.fill: parent
            anchors.topMargin: 1
            anchors.leftMargin: 1
            anchors.rightMargin: 1
            anchors.bottomMargin: 1
            color: defaultColor
            Diffusion{
                id:diffusion
                root: parent
                anchors.fill: parent
            }
        }
    }

    onPressed: {
        diffusion.run(pressX,pressY)
    }
    onReleased: {
        diffusion.stop()
    }
    onHoveredChanged: {
        if(hovered){
            diffusion.hover();
        }else{
            diffusion.stop()
            diffusion.exit();
        }
    }
}
