import QtQuick
import "qrc:/../ToolBar"

Window {
    id: root
    width: 1920*0.7
    height: 1200*0.7
    //flags:Qt.Window | Qt.FramelessWindowHint
    visible: true
    color:"black"

    BottomBar{
        width: 1920*0.7
        height: 120*0.7
        anchors.bottom: parent.bottom
    }

}
