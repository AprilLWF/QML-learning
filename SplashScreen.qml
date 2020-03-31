import QtQuick 2.12
import QtQuick.Controls 2.5

Item {

    id: splash
    anchors.fill: parent

    property int timeoutInterval: 2000 //定时
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
            splash.timeout() //超时关掉欢迎界面
        }
    }

    Button{
        id: welcome
        background: Rectangle{

            color: "#00000000"

        }//为了使按钮透明 不知还有没有别的方法

//        background: transparent //这行有问题 background使用有问题

//        background: Rectangle {
//            implicitWidth: 100
//            implicitHeight: 50

//            border.color: "blue" //设置边框颜色
//            border.width: 2      //设置边框宽度

//            color: "#00000000"
//           }

        anchors.fill: parent

        onClicked: {
            splash.visible = false;
            splash.timeout()//点击按钮 关掉欢迎界面
        }
    }
}
