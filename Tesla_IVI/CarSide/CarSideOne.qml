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
    property int percentBattery: 100
    property int driveMode: CarSideOne.DriveMode.D
    property bool autoDriving: true
    property int speed: 70
    property string mph: "MPH"

    property alias doorLeftFront: carview.doorLeftFront
    property alias doorRightFront: carview.doorRightFront
    property alias doorLeftRear: carview.doorLeftRear
    property alias doorRightRear: carview.doorRightRear
    property alias openTrunkFront: carview.openTrunkFront

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
    Rectangle{
        anchors.verticalCenter: battery.verticalCenter
        width: (58*0.7/100)*root.percentBattery
        height: 19*0.7
        x: 498*0.7
        color: "green"
    }
    Image {
        id: battery
        width: 62*0.7
        height: 20*0.7
        z:1
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
    Rectangle{
        id: baseSpeedLine
        height: 2
        width: 540*0.7
        y:205*0.7
        color: "#FFFFFF"
        anchors.horizontalCenter: root.horizontalCenter
    }
    Rectangle{
        height: 6
        radius: 3*0.7
        width: ((270*0.7)/250)*root.speed
        color: "#25CB55"
        x: baseSpeedLine.width/2
        anchors.verticalCenter: baseSpeedLine.verticalCenter
    }
    CarView{
        id: carview
        width: 580*0.7
        height: 630*0.7
        y: 207*0.7
    }
    DrivingBar{
        id: drivingBar
        autoDriving: root.autoDriving
        driveMode: root.driveMode
        width: 48*0.7
        height: root.width
        y: 227*0.7

    }




}
