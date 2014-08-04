import QtQuick 2.2
import CustomImage 1.0

Image {
    id:picture
    property string sourceUrl: ""
    property alias folder: cachedImage.folder
    source: ""
    fillMode: Image.PreserveAspectFit
    CImage {
        id: cachedImage
        folder: ""
        onLocalsrcChanged:
        {
            console.log(localsrc);
            picture.source = localsrc;
        }
    }
    onSourceUrlChanged: sourceUrl !== "" ? cachedImage.imgsrc = sourceUrl : ""
    Component.onCompleted: cachedImage.start()
}
