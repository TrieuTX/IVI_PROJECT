import QtQuick 2.15

Item {
    Rectangle{
        anchors.fill: parent
        color:"red"
        Rectangle{

            Image {
                id: upTemp
                width: 50
                height: 30
                source: "qrc:/Icon/arrow.svg"
                rotation: 180
            }
        }

        Image {
            id: tempNumber
            source: "file"
        }
        //    Image {
        //        id: downTemp
        //        source: "qrc:/Icon/arrow.svg"
        //    }
    }
}
