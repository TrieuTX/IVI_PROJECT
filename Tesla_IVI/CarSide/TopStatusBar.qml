import QtQuick 2.15
Item{
    id: root
    property bool headlight: true
    property bool tirePressure: true
    Image{
        id: headlighticon
        source: "qrc:/Icon/headlights.svg"
        width: 48*0.7
        height: 48*0.7
        x: 510*0.7
        y: 10*0.7
        fillMode: Image.Stretch
        visible: root.headlight

    }
    Image {
        id: tirePressure
        source: "qrc:/Icon/tire pressure.svg"
        width: 48*0.7
        height: 48*0.7
        x: 90*0.7
        y: 10*0.7
        fillMode: Image.Stretch
        visible: root.tirePressure
    }
}
