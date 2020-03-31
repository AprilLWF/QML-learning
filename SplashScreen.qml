import QtQuick 2.12
import QtQuick.Controls 2.5

Item {

    id: splash
    anchors.fill: parent

    property int timeoutInterval: 2000
    signal timeout

    Image {
        id: splashImage
        anchors.fill: parent
        source: "qrc:/Source/splash.png"
    }

    Timer{
        interval: timeoutInterval
        running: true
        repeat: false
        onTriggered: {
            visible = false;
            splash.timeout()
        }
    }
}
