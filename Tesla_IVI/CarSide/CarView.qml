import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick3D 1.15
//import UntitledProject1 1.0
//import Quick3DAssets.Tesla_car 1.0

Item {
    id: root
    property bool doorLeftFront: true
    property bool doorRightFront: true
    property bool doorLeftRear: true
    property bool doorRightRear: true
    property bool openTrunkFront: true
    property int doorOpenAngle: -50
    property int openTruckAngle: 90
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
                openTruckAngle: root.openTrunkFront
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
