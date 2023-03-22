import QtQuick 2.15


Rectangle{
    id: root
    property int temp: 30
    signal upclicked()
    signal downclicked()
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
            onClicked: root.upclicked()
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
            onClicked: root.downclicked()
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
