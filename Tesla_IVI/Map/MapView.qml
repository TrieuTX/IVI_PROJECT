import QtQuick 2.15
import QtLocation 5.15
import QtPositioning 5.15
Item {
    MapLoad{
        anchors.fill: parent
    }

    SearchBar{
        id: searchBar
        x: 0.7*20
        y: 0.7*80
        width: 340*0.7
        height: 80*0.7
        radius: 40*0.7
        color: "black"
        onSearchPressed: {

        }
    }

    RightBar{
        id: rightBar
        x: 1233*0.7
        y: 88*0.7
        height: 770*0.7
        width: 80*0.7
        color:"black"
    }

    StatusBar{
        id: statusBar
        width: 1340*0.7
        height: 70*0.7
    }
}
