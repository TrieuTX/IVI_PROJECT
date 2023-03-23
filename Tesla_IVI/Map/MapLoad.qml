import QtQuick 2.15
import QtLocation 5.15
import QtPositioning 5.15

Item {
    Map{
        anchors.fill: parent
        center: QtPositioning.coordinate(21.028511, 105.804817) // Helsinki
        zoomLevel: 14
        bearing: 0
        tilt:45
        plugin: Plugin {
            name: "mapboxgl"
            PluginParameter{
                name: "mapboxgl.access_token"
                value: "pk.eyJ1IjoiZGFuaWVsdHJpZXUiLCJhIjoiY2wzNXpkZHN0MGF1NDNpbGk4Mmh1cHhqdSJ9.1kb0H6Ndq3GSRbi4AD87KQ"
            }
            PluginParameter{
                name: "mapboxgl.mapping.additional_style_urls"
                value: "mapbox://styles/danieltrieu/clfkjc95c001v01p4uwjvwjsc"
            }

        }
    }
}
