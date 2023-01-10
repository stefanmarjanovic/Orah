#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext> //Required for communication with QML files

#include "user.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    user *newUser = new user;

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("stefan",newUser);          // pass user object 'stefan' to QML
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));                // load the QML
    engine.trimComponentCache();

    //engine.load(QUrl(QStringLiteral("qrc:/login.qml")));                // load the QML page
    /*const QUrl url(u"qrc:/login.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);
    */

    return app.exec();
}
