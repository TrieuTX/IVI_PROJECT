import QtQuick 2.15
Item{
    id: root
    enum DriveMode{
        P,
        D,
        R,
        N
    }
    property bool parkMode: true
    property int percentBattery: 50
    property int driveMode: CarSideOne.DriveMode.D
    property int speed: 70
    property string mph: "MPH"
    Text{
        id: speed
        width: root.width
        height: 100*0.7
        text: root.driveMode === CarSideOne.DriveMode.P ? "P" : root.speed
        y: 60*0.7
        color: "white"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment:  Text.AlignVCenter
        font.pixelSize: 110*0.7
        font.family: 'Montserrat'
    }
    Text {
        id: mph
        text: root.mph
        width: 80*0.7
        height: 25*0.7
        y: 167*0.7
        color: "white"
        visible: root.driveMode === CarSideOne.DriveMode.D
        font.family: 'Montserrat'
        anchors.horizontalCenter: root.horizontalCenter
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment:  Text.AlignVCenter
        font.pixelSize: 20*0.7
    }
    Image {
        id: battery
        width: 62*0.7
        height: 20*0.7
        x: 498*0.7
        y: 170*0.7
        fillMode: Image.Stretch
        source: "qrc:/Icon/battery.svg"
    }
    Text{
        id: batteryPercent
        text: root.percentBattery + "%"
        width: 50*0.7
        height: 25*0.7
        x: (383+50)*0.7
        color: "white"
        font.family: 'Montserrat'
        anchors.verticalCenter: battery.verticalCenter
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment:  Text.AlignVCenter
        font.pixelSize: 20*0.7
    }
    Row{
        id: gearRow
        width: 98*0.7
        height: 25*0.7
        anchors.verticalCenter: battery.verticalCenter
        x: 20*0.7
        spacing: 12*0.7
        Text{
            width: 15*0.7
            height: 25*0.7
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment:  Text.AlignVCenter
            text: "P"
            color:"white"
            font.pixelSize: 20*0.7
            opacity: root.driveMode === CarSideOne.DriveMode.P ? 1 : 0.5
        }
        Text{
            width: 15*0.7
            height: 25*0.7
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment:  Text.AlignVCenter
            text: "R"
            color:"white"
            font.pixelSize: 20*0.7
            opacity:root.driveMode === CarSideOne.DriveMode.R ? 1 : 0.5
        }
        Text{
            width: 15*0.7
            height: 25*0.7
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment:  Text.AlignVCenter
            text: "N"
            color:"white"
            font.pixelSize: 20*0.7
            opacity:root.driveMode === CarSideOne.DriveMode.N ? 1 : 0.5
        }
        Text{
            width: 15*0.7
            height: 25*0.7
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment:  Text.AlignVCenter
            text: "D"
            color:"white"
            font.pixelSize: 20*0.7
            opacity:root.driveMode === CarSideOne.DriveMode.D ? 1 : 0.5
        }
    }




}
