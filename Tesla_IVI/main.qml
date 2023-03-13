import QtQuick 2.15
import QtQuick.Window 2.15
import QtLocation 5.15
import QtPositioning 5.15
import "ToolBar"
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

    Plugin {
        id: mapPlugin
        name: "osm" // "mapboxgl", "esri", ...
        // specify plugin parameters if necessary
        // PluginParameter {
        //     name:
        //     value:
        // }
    }

    Map {
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(59.91, 10.75) // Oslo
        zoomLevel: 14
    }
}
