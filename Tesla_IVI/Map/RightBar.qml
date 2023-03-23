import QtQuick 2.15

Item {
    id: root
    property color color: "black"
    property int compassAngle: 0

    signal chargingStationPressed()
    signal settingPressed()
    signal zoomInPressed()
    signal zoomOutPressed()

//Compass
    Rectangle{
        width: 80*0.7
        height: 80*0.7
        radius: 40*0.7
        color: root.color
//        Rectangle{
//            width: 50*0.7
//            height: 50*0.7
//            radius: 25*0.7
//            color: "grey"
//            //anchors.centerIn: parent
//            anchors.horizontalCenter: parent.horizontalCenter
//            anchors.verticalCenter: parent.verticalCenter

//        }
        Image {
            id: imageCompass
            source: "qrc:/Icon/direction.svg"
            fillMode: Image.PreserveAspectFit
            width: 50*0.7
            height: 50*0.7
            rotation: root.compassAngle
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            Text {
                text: qsTr("N")
                width: 36*0.7
                height: 16*0.7
                anchors.centerIn: parent
                font.pixelSize: 15*0.7
                font.family: "Montserrat"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment:  Text.AlignVCenter
            }
        }
    }

//Zoom Map
    Rectangle{
        x: 0
        y: 100*0.7
        width: 80*0.7
        height: 175*0.7
        radius: 40*0.7
        color: root.color
        Image {
            id: imageZoomIn
            source: "qrc:/Icon/plus.svg"
            fillMode: Image.PreserveAspectFit
            width: 48*0.7
            height: 48*0.7
            y:15*0.7
            anchors.horizontalCenter: parent.horizontalCenter
            MouseArea{
                id: mouseareaZoomIn
                hoverEnabled: true
                anchors.fill: imageZoomIn
                onPressed: root.zoomInPressed()
                onEntered:{
                    imageZoomIn.opacity = 0.5
                }
                onExited: {
                    imageZoomIn.opacity = 1
                }
            }
        }

        Image {
            id: imageZoomOut
            source: "qrc:/Icon/minus.svg"
            fillMode: Image.PreserveAspectFit
            width: 48*0.7
            height: 48*0.7
            y:109*0.7
            anchors.horizontalCenter: parent.horizontalCenter
            MouseArea{
                id: mouseareaZoomOut
                hoverEnabled: true
                anchors.fill: imageZoomOut
                onPressed: root.zoomOutPressed()
                onEntered:{
                    imageZoomOut.opacity = 0.5
                }
                onExited: {
                    imageZoomOut.opacity = 1
                }
            }
        }

    }

//search charging station
    Rectangle{
        y: (20+80+175+315)*0.7
        width: 80*0.7
        height: 80*0.7
        radius: 40*0.7
        color: root.color
        Rectangle{
            id: rectangeChargingStation
            width: 50*0.7
            height: 50*0.7
            radius: 25*0.7
            color: "grey"
            anchors.centerIn: parent
            Image {
                id: chargeStation
                source: "qrc:/Icon/power.svg"
                fillMode: Image.PreserveAspectFit
                width: 26*0.7
                height: 26*0.7
                y:109*0.7
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
            MouseArea{
                hoverEnabled: true
                anchors.fill: rectangeChargingStation
                onPressed: root.chargingStationPressed()
                onEntered:{
                    chargeStation.opacity = 0.5
                }
                onExited: {
                    chargeStation.opacity = 1
                }
            }

        }
    }

// Setting
    Rectangle{
        y: (20+80+175+315+80+20)*0.7
        width: 80*0.7
        height: 80*0.7
        radius: 40*0.7
        color: root.color
        Image {
            id: image
            width: 40*0.7
            height: 40*0.7
            fillMode: Image.PreserveAspectFit
            source: "qrc:/Icon/gear.svg"
            anchors.centerIn: parent
            MouseArea{
                id: mousearea
                hoverEnabled: true
                anchors.fill: image
                onPressed: root.settingPressed()
                onEntered:{
                    image.opacity = 0.5
                }
                onExited: {
                    image.opacity = 1
                }
            }
        }
    }








}
