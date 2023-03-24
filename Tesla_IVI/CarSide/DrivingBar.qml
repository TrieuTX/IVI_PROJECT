import QtQuick 2.15
import QtQuick.Controls 2.15

Item{
    id: root
    property bool autoDriving: false
    property int driveMode: 0
    property int setSpeedDriving: 25
    Image {
        id: autoDriving
        width: 48*0.7
        height: 48*0.7
        x: 20*0.7
        source: "qrc:/Icon/steering wheel.svg"
        visible: root.autoDriving === true && root.driveMode === 1
    }
    Text {
        id: speedLimit
        width: 48*0.7
        height: 48*0.7
        x: 265*0.7
        text: root.setSpeedDriving
        font.pixelSize: 30*0.7
        font.family: "Montserrat"
        color: "white"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment:  Text.AlignVCenter
        visible: root.autoDriving === true && root.driveMode === 1
    }
    Image {
        id: downSpeedlimit
        width: 48*0.7
        height: 48*0.7
        x: 177*0.7
        source: "qrc:/Icon/minus.svg"
        visible: root.autoDriving === true && root.driveMode === 1
    }
    Image {
        id: upSpeedlimit
        width: 48*0.7
        height: 48*0.7
        x: 353*0.7
        source: "qrc:/Icon/plus.svg"
        visible: root.autoDriving === true && root.driveMode === 1
    }
    Image {
        id: speedLimitinRoad
        width: 48*0.7
        height: 48*0.7
        x: 517*0.7
        source: "qrc:/Icon/Speed Limit.svg"
        visible: root.autoDriving === true && root.driveMode === 1
    }
}
