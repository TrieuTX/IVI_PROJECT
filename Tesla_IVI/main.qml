import QtQuick 2.15
import QtQuick.Window 2.15
import QtLocation 5.15
import QtPositioning 5.15
import "ToolBar"
import "Map"
import "CarSide"
Window {
    id: root
    width: 1920*0.7
    height: 1200*0.7
    //flags:Qt.Window | Qt.FramelessWindowHint
    visible: true
    color:"white"
    BottomBar{
        width: 1920*0.7
        height: 120*0.7
        anchors.bottom: parent.bottom
    }
    MapView{
        x: 580*0.7
        width: 1340*0.7
        height: 1080*0.7
    }
    CarSide{
        width: 580*0.7
        height: 1080*0.7
    }

}
