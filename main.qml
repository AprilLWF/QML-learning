import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    id:window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Page
    {
        anchors.fill: parent
        SplashScreen{
            anchors.fill: parent
        }
    }
}
