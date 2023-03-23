import QtQuick 2.15

Item{
    id: root
    property alias image_source: image.source
    signal pressed()
    property int rotation: 0
    property bool mirror: false
    Image {
        id: image
        anchors.fill: root
        fillMode: Image.Stretch
        rotation: root.rotation
        mirror: root.mirror
        MouseArea{
            id: mousearea
            hoverEnabled: true
            anchors.fill: image
            onPressed: root.pressed()
            onEntered:{
                image.opacity = 0.5
            }
            onExited: {
                image.opacity = 1
            }
        }
    }
}
