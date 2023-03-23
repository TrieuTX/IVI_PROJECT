import QtQuick 2.15

Item {
    id: root
    property int button_width: 48*0.7
    property int button_height: 48*0.7
    property color color: "black"
    Rectangle{
        id: root1
        anchors.fill: root
        color: root.color
    ButtonBar{
        x: 160*0.7
        y:35*0.7
        width: root.button_width
        //color: root.color
        height: root.button_height
        image_source: "qrc:/Icon/model3-icon.svg"
        onPressed: {
            console.log("Asdasd")
        }
    }
    ButtonBar{
        x: 310*0.7
        y:35*0.7
        width: root.button_width
        //color: root.color
        height: root.button_height
        image_source: "qrc:/Icon/defrost.svg"
    }
    ButtonBar{
        x: 460*0.7
        y:35*0.7
        width: root.button_width
        //color: root.color
        height: root.button_height
        image_source: "qrc:/Icon/heater.svg"
    }
    ButtonBar{
        x: 610*0.7
        y:35*0.7
        width: root.button_width
        //color: root.color
        height: root.button_height
        image_source: "qrc:/Icon/seat.svg"
    }

    TempButton{
        id: leftTemp
        x: 735 * 0.7
        y: 0
        color: root.color
        width: 150*0.7
        height: 116* 0.7
        onUppressed:  {
            leftTemp.temp++
        }
        onDownpressed:  {
            leftTemp.temp--
        }
    }

    StateFanButton{
        x: 910*0.7
        y: 23*0.7
        width: 100*0.7
        height: 75*0.7
        onPressed: {

        }
    }

    TempButton{
        id: rightTemp
        x: 1035 * 0.7
        y: 0
        color: root.color
        width: 150*0.7
        height: 116* 0.7
        onUppressed:{
            rightTemp.temp++
        }
        onDownpressed:  {
            rightTemp.temp--
        }
    }
    ButtonBar{
        x: 1262*0.7
        y: 35*0.7
        width: root.button_width
        height: root.button_height
        mirror: true
        image_source: "qrc:/Icon/seat.svg"
    }

    ButtonBar{
        x: 1410*0.7
        y:35*0.7
        width: root.button_width
        //color: root.color
        height: root.button_height
        image_source: "qrc:/Icon/music.svg"
    }
    ButtonBar{
        x: 1560*0.7
        y:35*0.7
        width: root.button_width
       // color: root.color
        height: root.button_height
        image_source: "qrc:/Icon/phone.svg"
    }

    VolumeButton{
        id: volumeButton
        x: 1710*0.7
        y: 4*0.7
        width: 50*0.7
        height: 112*0.7
        color: root.color
        onUppressed: {
            console.log("Up")
            volumeButton.volume++;
        }
        onDownpressed:  {
            console.log("Down")
            volumeButton.volume--;
        }
    }


    }
}
