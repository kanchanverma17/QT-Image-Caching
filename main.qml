import QtQuick 2.2
import QtQuick.Window 2.1

Window {
    visible: true
    width: 500
    height: 500
    CachedImage {
        sourceUrl: "https://www.google.ee/images/srpr/logo11w.png"
        folder: "temp"
        width: parent.width / 2
        height: parent.height / 2
        anchors.centerIn: parent
    }
}
