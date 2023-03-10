import QtQuick 2.15

Item {
    id: root
    property int button_width: 48*0.7
    property int button_height: 48*0.7
    Rectangle{
        id: root1
        anchors.fill: root
        color:"black"
    ButtonBar{
        x: 160*0.7
        y:35*0.7
        width: root.button_width
        color: "black"
        height: root.button_height
        image_source: "qrc:/Icon/model3-icon.svg"
        onClicked: {
            console.log("Asdasd")
        }
    }
    ButtonBar{
        x: 310*0.7
        y:35*0.7
        width: root.button_width
        color: "black"
        height: root.button_height
        image_source: "qrc:/Icon/defrost.svg"
    }
    ButtonBar{
        x: 460*0.7
        y:35*0.7
        width: root.button_width
        color: "black"
        height: root.button_height
        image_source: "qrc:/Icon/heater.svg"
    }
    ButtonBar{
        x: 610*0.7
        y:35*0.7
        width: root.button_width
        color: "black"
        height: root.button_height
        image_source: "qrc:/Icon/seat.svg"
    }









    ButtonBar{
        x: 1262*0.7
        y: 35*0.7
        width: root.button_width
        color: "black"
        height: root.button_height
        image_source: "qrc:/Icon/seat.svg"
    }

    ButtonBar{
        x: 1410*0.7
        y:35*0.7
        width: root.button_width
        color: "black"
        height: root.button_height
        image_source: "qrc:/Icon/music.svg"
    }
    ButtonBar{
        x: 1560*0.7
        y:35*0.7
        width: root.button_width
        color: "black"
        height: root.button_height
        image_source: "qrc:/Icon/phone.svg"
    }
    }
}
