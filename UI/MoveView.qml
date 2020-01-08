import QtQuick 2.0


Rectangle{
    id: rectangle
    property var root
    property alias tilteColor: title.color
    property alias tilteHeight: title.height
    color: "#00000000"
    Rectangle {
        id: title
        height: 20
        color: "#3A4047"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
    }
    MouseArea{
        id:centerArea
        anchors.fill: title
        property var mousePos
        onPressed: {
            mousePos = Qt.point(mouseX,mouseY);
        }
        onPositionChanged: {
            root.setGeometry(root.x + (mouseX - mousePos.x),
                             root.y + (mouseY - mousePos.y),
                             root.width,
                             root.height)
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
    D{i:0;autoSize:true;height:480;width:640}D{i:4;anchors_height:100;anchors_y:174}D{i:5;anchors_width:100;anchors_x:239}
D{i:6;anchors_x:0}D{i:7;anchors_height:100;anchors_x:0;anchors_y:147}
}
##^##*/
