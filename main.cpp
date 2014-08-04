#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "cimage.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    qmlRegisterType<CImage>("CustomImage", 1, 0, "CImage");
    engine.load(QUrl(QStringLiteral("qrc:///main.qml")));

    return app.exec();
}
