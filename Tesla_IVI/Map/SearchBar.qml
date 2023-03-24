import QtQuick 2.15
import QtQuick.Controls 2.15
Item {
    id: root
    property real opacityroot: 0.7
    property int radius: 0
    property color color: "black"
    signal searchPressed()
    Rectangle{
        id: rectangle
        width: root.width
        height: root.height
        radius: root.radius
        color: root.color
        opacity: root.opacityroot
    }
    Image {
        width: 48*0.7
        height: 48*0.7
        x: 15*0.7
        y: 15*0.7
        fillMode: Image.Stretch
        source: "qrc:/Icon/navigate icon.svg"
    }
    Image {
        width: 48*0.7
        height: 48*0.7
        x: 275*0.7
        y: 15*0.7
        rotation: -90
        fillMode: Image.Stretch
        source: "qrc:/Icon/arrow.svg"
        MouseArea{
            hoverEnabled: true
            anchors.fill: parent
            onClicked: root.searchPressed()
            onEntered:{
                parent.opacity = 0.5
            }
            onExited: {
                parent.opacity = 1
            }
        }

    }
    TextField{
        id:textInput
        width: 212*0.7
        height: 48*0.7
        x: (15+48)*0.7
        y: 15*0.7
        font.pixelSize: 20*0.7
        verticalAlignment: Text.AlignVCenter
        color: "white"
        clip: true
        cursorVisible: false
        placeholderText: "Navigate"
        background: Rectangle{
            anchors.fill: textInput
            color: root.color
            opacity: 0
        }

        //property string placeholderText: "Navigate"
//        Text {
//            anchors.fill: parent
//            text: textInput.placeholderText
//            verticalAlignment: Text.AlignVCenter
//            font.pixelSize: 20*0.7
//            color: "#aaa"
//            visible: !textInput.text && !textInput.activeFocus
//        }
//        MouseArea{
//            anchors.fill: textInput
//            onPressed: {
//               textInput.textEdited()
//            }
//            onExited: {
//                textInput.editingFinished()
//            }
//        }
    }

}
