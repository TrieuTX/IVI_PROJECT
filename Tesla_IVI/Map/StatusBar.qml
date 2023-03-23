import QtQuick 2.15

Item {
    id: root
    property bool lock: true
    property string time: "10:21 AM"
    property string temp: "17 C"
    Image{
        id: lockImage
        width: 48*0.7
        height: 48*0.7
        x: 20*0.7
        source: "qrc:/Icon/lock.svg"
        fillMode: Image.PreserveAspectFit
        anchors.verticalCenter: parent.verticalCenter
    }
    Image {
        id: bluetool
        source: "qrc:/Icon/bluetooth.svg"
        fillMode: Image.PreserveAspectFit
        width: 48*0.7
        height: 48*0.7
        x: 80*0.7
        anchors.verticalCenter: parent.verticalCenter
    }
    Image {
        id: phoneWave
        source: "qrc:/Icon/cell signal.svg"
        fillMode: Image.PreserveAspectFit
        width: 48*0.7
        height: 48*0.7
        x: 140*0.7
        anchors.verticalCenter: parent.verticalCenter
    }
    Image {
        id: warning
        source: "qrc:/Icon/alert.svg"
        fillMode: Image.PreserveAspectFit
        width: 48*0.7
        height: 48*0.7
        x: 260*0.7
        anchors.verticalCenter: parent.verticalCenter
    }
    Image {
        id: teslaIcon
        source: "qrc:/Icon/Tesla Logo.svg"
        fillMode: Image.PreserveAspectFit
        width: 40*0.7
        height: 40*0.7
        x: 325*0.7
        anchors.verticalCenter: parent.verticalCenter
    }
    Text{
        id: time
        width: 100*0.7
        height: 25*0.7
        x: 1190*0.7
        text: root.time.toUpperCase()
        color: "white"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment:  Text.AlignVCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 20*0.7
    }
    Text{
        id: temp
        width: 100*0.7
        height: 25*0.7
        x:1080*0.7
        text: root.temp.toUpperCase()
        color: "white"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment:  Text.AlignVCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 20*0.7
    }

}
