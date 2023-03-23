import QtQuick 2.15

Rectangle{
    id: root
    property int volume: 30
    property bool visibleVolumIcon: true
    signal uppressed()
    signal downpressed()
    Timer {
        id: timer
        interval: 2000
        onTriggered: {
            root.visibleVolumIcon = true
        }
    }
    Timer{
        id: timer2
        interval: 40
        repeat: true
        running:false
        onTriggered: {
            console.log("loop up")
            root.uppressed()
            timer.restart()
        }
    }
    Timer{
        id: timer3
        interval: 40
        repeat: true
        running:false
        onTriggered: {
            console.log("loop down")
            root.downpressed()
            timer.restart()
        }
    }
    Image {
        id: upVolume
        fillMode: Image.Stretch
        width: 50
        height: 30
        anchors.horizontalCenter: parent.horizontalCenter
        source: "qrc:/Icon/arrow.svg"
        rotation: 180
        MouseArea{
            propagateComposedEvents: true
            //pressAndHoldInterval:400
            hoverEnabled: true
            anchors.fill: upVolume
            onPressed: {
                root.uppressed()
                root.visibleVolumIcon = false
                timer.restart()
            }
            onPressAndHold: {
                console.log("adss")
                timer2.start()
            }
            onReleased: {
                timer2.stop()
                //timer.stop()
            }
            onEntered:{
                upVolume.opacity = 0.5
            }
            onExited: {
                upVolume.opacity = 1
            }
        }
    }

    Image {
        id: downVolume
        fillMode: Image.Stretch
        width: 50
        height: 30
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        source: "qrc:/Icon/arrow.svg"
        MouseArea{
            hoverEnabled: true
            anchors.fill: downVolume
            onPressed: {
                root.downpressed()
                root.visibleVolumIcon = false
                timer.restart()
            }
            onPressAndHold: {
                console.log("adss")
                timer3.start()
            }
            onReleased: {
                timer3.stop()
                //timer.stop()
            }
            onEntered:{
                downVolume.opacity = 0.5
            }
            onExited: {
                downVolume.opacity = 1
            }
        }
    }

    Image {
        id: iconVolume
        fillMode: Image.Stretch
        width: 48*0.7
        height: 48*0.7
        anchors.centerIn: root
        visible: root.visibleVolumIcon
        source: "qrc:/Icon/volume.svg"
    }
    Text {
        id: numberTemp
        width: root.width
        height: 56*0.7
        color: "white"
        visible: !root.visibleVolumIcon
        anchors.centerIn: parent
        font.family: "Helvetica"
        font.pixelSize: 40*0.7
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        text: root.volume
    }
}
