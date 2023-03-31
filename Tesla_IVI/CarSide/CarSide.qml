import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Timeline 1.0
Item{

    Rectangle{
        anchors.fill: parent
        color: "#0E0E0E"
    SwipeView {
        id: swipeView
        currentIndex: 0
        anchors.fill: parent

        CarSideOne{
            id: carSideOne
        }
        Item {}
        Item {}
    }
    TopStatusBar{
        width: parent.width
        height: 60*0.7
    }

    SupportBar{
        width: 580*0.7
        height: 50*0.7
        y:880 *0.7
        onCameraIconPressed:{

        }
    }

    PageIndicator {
        id: indicator

        count: swipeView.count
        currentIndex: swipeView.currentIndex
        anchors.bottom: swipeView.bottom
        anchors.bottomMargin: 10
        anchors.horizontalCenter: swipeView.horizontalCenter
    }
    }
}
