import QtQuick 2.15

Item {
    property string stateFan: "manual"
    signal pressed()
    id: root
    Image{
        id: image
        width: 48*0.7
        height: 48*0.7
        anchors.horizontalCenter: root.horizontalCenter
        fillMode: Image.Stretch
        source: "qrc:/Icon/fan.svg"
    }
    Text{
        id: text
        width: root.width
        height: 25*0.7
        text: root.stateFan.toUpperCase()
        anchors.bottom: root.bottom
        color: "white"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment:  Text.AlignVCenter
        font.pixelSize: 15*0.7
    }
    MouseArea{
        anchors.fill: root
        hoverEnabled: true
        onPressed: root.pressed()
        onEntered:{
            text.opacity = 0.5
        }
        onExited: {
            text.opacity = 1
        }
    }
}
