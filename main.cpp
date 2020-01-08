#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "MainWindow.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);
    QObject *pRoot = engine.rootObjects().first();

   QObject *pButton = pRoot->findChild<QObject *>("nButton");
   if( pButton )
   {
          QObject::connect(pButton,SIGNAL(onClicked()),pRoot,SLOT(test()));
   }
    return app.exec();
}
