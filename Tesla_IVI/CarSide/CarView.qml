import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick3D 1.15
//import UntitledProject1 1.0
//import Quick3DAssets.Tesla_car 1.0
import QtQuick.Timeline 1.0

Item {
    id: root
    property bool doorLeftFront: false
    property bool doorRightFront: false
    property bool doorLeftRear: false
    property bool doorRightRear: false
    property bool openTrunkFront: false
    property int doorOpenAngle: -50
    property int openTruckAngle: 70
    property int duration: 500
    View3D {
        id: view3D
        anchors.fill: parent
        environment: sceneEnvironment
        SceneEnvironment {
            id: sceneEnvironment
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
        }
        Node {
            id: scene
            DirectionalLight {
                id: directionalLight
                x: -160.601
                y: 1418.433
                brightness: 72
                z: 23.22202
                eulerRotation.z: 87.03397
                eulerRotation.y: -87.3177
                eulerRotation.x: -62.86283
            }
            PerspectiveCamera {
                id: sceneCamera
                x: -0
                y: 615.156

                eulerRotation.z: 0
                eulerRotation.y: 0
                eulerRotation.x: -90
                z: -56.83335
            }
            Tesla_car {
                id: tesla_car
                x: 0
                y: 0
                z: 0
                doorLeftFront: root.doorLeftFront
                doorLeftRear: root.doorLeftRear
                doorRightFront: root.doorRightFront
                doorRightRear: root.doorRightRear
                openTrunkFront: root.openTrunkFront
                openTruckAngle: root.openTruckAngle
                duration: root.duration
                doorOpenAngle: root.doorOpenAngle
            }
        }
    }

    Timeline {
        id: tirePressureTimeline
        animations: [
            TimelineAnimation {
                id: tirePressureAnimation
                running: false
                duration: 50000
                loops: -1
                to: 100
                from: 0
            }
        ]
        endFrame: 100
        startFrame: 0
        enabled: false

        KeyframeGroup {
            target: tesla_car
            property: "eulerRotation.y"
            Keyframe {
                value: 360
                frame: 100
            }

            Keyframe {
                value: 0
                frame: 0
            }
        }
    }

    Rectangle{
        id: clickOpenTrunkFront
        height: 70
        width: 110
        color: "transparent"
        x: 150
        y:100
        MouseArea{
            anchors.fill: parent
            onPressed: {
                root.openTrunkFront = !root.openTrunkFront
                tirePressureTimeline.enabled = !tirePressureTimeline.enabled
                tirePressureAnimation.running = !tirePressureAnimation.running
            }
        }

    }
    Rectangle{
        id: clickDoorLeftFront
        height: 90
        width: 90
        color: "transparent"
        x: 80
        y:170
        MouseArea{
            anchors.fill: parent
            onPressed: {
                root.doorLeftFront = !root.doorLeftFront
            }
        }

    }
    Rectangle{
        id: clickDoorRightFront
        height: 90
        width: 90
        color: "transparent"
        x: 240
        y:170
        MouseArea{
            anchors.fill: parent
            onPressed: {
                root.doorRightFront = !root.doorRightFront
            }
        }

    }
    Rectangle{
        id: clickDoorLeftRear
        height: 90
        width: 90
        color: "transparent"
        x: 80
        y:270
        MouseArea{
            anchors.fill: parent
            onPressed: {
                root.doorLeftRear = !root.doorLeftRear
            }
        }
    }
    Rectangle{
        id: clickDoorRightRear
        height: 90
        width: 90
        color: "transparent"
        x: 240
        y:270
        MouseArea{
            anchors.fill: parent
            onPressed: {
              root.doorRightRear = !root.doorRightRear
            }
        }
    }
    Item {
        id: __materialLibrary__
        DefaultMaterial {
            id: defaultMaterial
            objectName: "Default Material"
            diffuseColor: "#4aee45"
        }
    }
}
