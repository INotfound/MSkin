import QtQuick 2.0
import QtQuick.Controls 2.5

Rectangle{
    id: rectangle
    property var root
    property alias tilteColor: title.color
    property alias tilteHeight: title.height
    color: "#FFFFFF"
    border.color: "#40000000"
    Rectangle {
        id: title
        height: 20
        color: "#3A4047"
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.topMargin: parent.border.width
        anchors.leftMargin: parent.border.width
        anchors.rightMargin: parent.border.width
        MouseArea{
            id:titleArea
            anchors.top: title.top
            anchors.left: title.left
            anchors.right: minimize.right
            anchors.bottom: title.bottom
            property var mousePos
            property var isChanged : true
            onPressed: {
                mousePos = Qt.point(mouseX,mouseY);
            }
            onPositionChanged: {
                if(isChanged){
                    root.setGeometry(root.x + (mouseX - mousePos.x),
                                     root.y + (mouseY - mousePos.y),
                                     root.width,
                                     root.height)
                }
            }
            onDoubleClicked: {
                maximize.invoke()

            }
        }
        Button{
            id: close
            width: 25
            clip:true
            padding: 3
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            contentItem:Image {
                id:closeImage
                fillMode: Image.PreserveAspectFit
                source: "Image/title_button_close.png"
            }
            background: Rectangle{
                id:closeBackground
                color: "#00000000"
            }
            onHoveredChanged: {
                if(hovered){
                    closeBackground.color = "#FFE81123"
                    closeImage.source = "Image/title_button_h_close.png"
                }else{
                    closeBackground.color = "#00000000"
                    closeImage.source = "Image/title_button_close.png"
                }
            }
            onClicked: {
                root.close()
            }
        }
        Button{
            id: maximize
            width: 25
            clip:true
            padding: 2
            anchors.top: parent.top
            anchors.right: close.left
            anchors.bottom: parent.bottom
            property var isMax : false
            contentItem:Image {
                id:maxImage
                fillMode: Image.PreserveAspectFit
                source: "Image/title_button_maximize.png"
            }
            background: Rectangle{
                id:maxBackground
                color: "#00000000"
            }
            onHoveredChanged: {
                if(hovered){
                    maxBackground.color = "#10000000"
                }else{
                    maxBackground.color = "#00000000"
                }
            }
            onClicked: {
                invoke()
            }
            function invoke(){
                if(isMax){
                    isMax = false
                    titleArea.isChanged = true
                    maxImage.source = "Image/title_button_maximize.png"
                    root.showNormal()
                }else{
                    isMax = true
                    titleArea.isChanged = false
                    maxImage.source = "Image/title_button_restore.png"
                    root.showFullScreen()
                }
            }
        }
        Button{
            id: minimize
            width: 25
            clip:true
            padding: 3
            anchors.top: parent.top
            anchors.right: maximize.left
            anchors.bottom: parent.bottom
            enabled: true
            contentItem:Image {
                fillMode: Image.PreserveAspectFit
                source: "Image/title_button_minimize.png"
            }
            background: Rectangle{
                id: minBackground
                color: "#00000000"
            }
            onHoveredChanged: {
                if(hovered){
                    minBackground.color = "#10000000"
                }else{
                    minBackground.color = "#00000000"
                }
            }
            onClicked: {
                root.showMinimized()
            }
        }

    }
    MouseArea {
        id: rightArea
        width: 5
        anchors.top: title.bottom
        anchors.right: parent.right
        anchors.bottom: bottomRightArea.top
        cursorShape: Qt.SizeHorCursor
        property var mousePos
        onPressed: {
            mousePos = Qt.point(mouseX,mouseY);
        }
        onPositionChanged: {
            root.setGeometry(root.x,
                             root.y,
                             root.width + (mouseX - mousePos.x),
                             root.height)
        }
    }

    MouseArea {
        id:bottomRightArea
        width: 5
        height: 5
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        cursorShape: Qt.SizeFDiagCursor
        property var mousePos
        onPressed: {
            mousePos = Qt.point(mouseX,mouseY);
        }
        onPositionChanged: {
            root.setGeometry(root.x,
                             root.y,
                             root.width + (mouseX - mousePos.x),
                             root.height + (mouseY - mousePos.y))
        }
    }

    MouseArea {
        id: leftArea
        width: 5
        anchors.top: title.bottom
        anchors.left: parent.left
        anchors.bottom: bottomLeftArea.top
        cursorShape: Qt.SizeHorCursor
        property var mousePos
        onPressed: {
            mousePos = Qt.point(mouseX,mouseY);
        }
        onPositionChanged: {
            root.setGeometry(root.x + (mouseX - mousePos.x),
                             root.y,
                             root.width - (mouseX - mousePos.x),
                             root.height)
        }

    }
    MouseArea {
        id: bottomLeftArea
        width: 5
        height: 5
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        cursorShape: Qt.SizeBDiagCursor
        property var mousePos
        onPressed: {
            mousePos = Qt.point(mouseX,mouseY);
        }
        onPositionChanged: {
            root.setGeometry(root.x + (mouseX - mousePos.x),
                             root.y,
                             root.width - (mouseX - mousePos.x),
                             root.height + (mouseY - mousePos.y))
        }
    }

    MouseArea {
        id: bottomArea
        height: 5
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.left: bottomLeftArea.right
        anchors.right: bottomRightArea.left
        cursorShape: Qt.SizeVerCursor
        property var mousePos
        onPressed: {
            mousePos = Qt.point(mouseX,mouseY);
        }
        onPositionChanged: {
            root.setGeometry(root.x,
                             root.y,
                             root.width,
                             root.height + (mouseY - mousePos.y))
        }
    }




}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:4;anchors_height:100;anchors_y:174}D{i:6;anchors_x:0}
D{i:7;anchors_height:100;anchors_x:0;anchors_y:147}D{i:5;anchors_width:100;anchors_x:239}
D{i:10;anchors_height:100;anchors_y:174}D{i:11;anchors_width:100;anchors_x:239}D{i:12;anchors_x:0}
D{i:13;anchors_height:100;anchors_x:0;anchors_y:147}D{i:14;anchors_width:100;anchors_x:239}
D{i:15;anchors_x:0}D{i:16;anchors_height:100;anchors_x:0;anchors_y:147}
}
##^##*/
