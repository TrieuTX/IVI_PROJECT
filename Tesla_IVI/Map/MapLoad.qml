import QtQuick 2.15
import QtLocation 5.15
import QtPositioning 5.15
Item {
    Map{
        anchors.fill: parent
        center: QtPositioning.coordinate(60.170448, 24.942046) // Helsinki
        zoomLevel: 18
        bearing: 30
        fieldOfView : 60
        plugin: Plugin {
            name: "mapboxgl"

            PluginParameter{
                name: "mapboxgl.access_token"
                value: "pk.eyJ1IjoiZGFuaWVsdHJpZXUiLCJhIjoiY2wzNXpkZHN0MGF1NDNpbGk4Mmh1cHhqdSJ9.1kb0H6Ndq3GSRbi4AD87KQ"
            }
            PluginParameter{
                name: "mapboxgl.mapping.additional_style_urls"
                value: "mapbox://styles/danieltrieu/cl4b1ags6001314p8uelwh034"
            }
        }
    }
}
