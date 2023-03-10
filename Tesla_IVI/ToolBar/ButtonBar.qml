import QtQuick 2.15

Rectangle{
    id: root
    property alias image_source: image.source
    signal clicked()
    Image {
        id: image
        anchors.fill: root
        fillMode: Image.Stretch
        //source: root.image_source
        MouseArea{
            id: mousearea
            anchors.fill: image
            onClicked: root.clicked()
        }
    }
}
