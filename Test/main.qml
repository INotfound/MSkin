import QtQuick 2.12
import QtWebView 1.1
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    WebView{
        id:webView
        anchors.leftMargin: 115
        anchors.topMargin: 17
        anchors.rightMargin: 115
        anchors.bottomMargin: 155
        url: "qrc:/index.html"
        anchors.fill: parent

    }

    Button {
        id: button
        x: 278
        y: 394
        text: qsTr("Button")
        onClicked: {
            var queryStr = "goto(113.262232,23.154345);";
            webView.runJavaScript(queryStr, function(result) { console.log(result); });
        }
    }
}
