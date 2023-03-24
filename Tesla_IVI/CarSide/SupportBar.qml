import QtQuick 2.15
Item{
    id: root
    signal cameraIconPressed()
    signal chargingIconPressed()
    signal voiceIconPressed()

    Image {
        id: cameraIcon
        width: 48*0.7
        height: 48*0.7
        fillMode: Image.Stretch
        source: "qrc:/Icon/camera.svg"
        x: 115*0.7
        MouseArea{
            hoverEnabled: true
            anchors.fill: cameraIcon
            onPressed: root.cameraIconPressed()
            onEntered:{
                cameraIcon.opacity = 0.5
            }
            onExited: {
                cameraIcon.opacity = 1
            }
        }
    }

    Image {
        id: chargingIcon
        source: "qrc:/Icon/power.svg"
        width: 48*0.7
        height: 48*0.7
        x: 265*0.7
        fillMode: Image.Stretch
        MouseArea{
            hoverEnabled: true
            anchors.fill: chargingIcon
            onPressed: root.chargingIconPressed()
            onEntered:{
                chargingIcon.opacity = 0.5
            }
            onExited: {
                chargingIcon.opacity = 1
            }
        }
    }

    Image {
        id: voiceIcon
        source: "qrc:/Icon/microphone.svg"
        width: 48*0.7
        height: 48*0.7
        x: 415*0.7
        fillMode: Image.Stretch
        MouseArea{
            hoverEnabled: true
            anchors.fill: voiceIcon
            onPressed: root.voiceIconPressed()
            onEntered:{
                voiceIcon.opacity = 0.5
            }
            onExited: {
                voiceIcon.opacity = 1
            }
        }
    }

}
