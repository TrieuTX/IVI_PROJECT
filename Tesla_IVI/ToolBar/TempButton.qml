import QtQuick 2.15


Rectangle{
    id: root
    property int temp: 30
    signal uppressed()
    signal downpressed()
    Timer{
        id: timerUpPressed
        interval: 40
        repeat: true
        running:false
        onTriggered: {
            root.uppressed()
        }
    }
    Timer{
        id: timerDownPressed
        interval: 40
        repeat: true
        running:false
        onTriggered: {
            root.downpressed()
        }
    }
    Image {
        id: upTemp
        fillMode: Image.Stretch
        width: 50
        height: 30
        anchors.horizontalCenter: parent.horizontalCenter
        source: "qrc:/Icon/arrow.svg"
        rotation: 180
        MouseArea{
            hoverEnabled: true
            anchors.fill: upTemp
            onPressed: root.uppressed()
            onPressAndHold: {
                timerUpPressed.start()
            }
            onReleased: {
                timerUpPressed.stop()
            }
            onEntered:{
                upTemp.opacity = 0.5
            }
            onExited: {
                upTemp.opacity = 1
            }
        }
    }
    Image {
        id: downTemp
        fillMode: Image.Stretch
        width: 50
        height: 30
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        source: "qrc:/Icon/arrow.svg"
        MouseArea{
            hoverEnabled: true
            anchors.fill: downTemp
            onPressed: {
                root.downpressed()
            }
            onReleased: {
                timerDownPressed.stop()
            }
            onPressAndHold: {
                timerDownPressed.start()
            }
            onEntered:{
                downTemp.opacity = 0.5
            }
            onExited: {
                downTemp.opacity = 1
            }
        }
    }
    Text {
        id: numberTemp
        width: root.width
        height: 56*0.7
        color: "white"
        anchors.centerIn: parent
        font.family: "Helvetica"
        font.pixelSize: 40*0.7
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        text: root.temp
    }
}
