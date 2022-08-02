#include <QGuiApplication>
#include <QQmlApplicationEngine>
/* #include <QQmlContext> */

int
main(int argc, char** argv)
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    const QUrl url(QStringLiteral("../src/main.qml"));

    engine.load(url);

/*     engine.rootContext()->setContextProperty(   ) */

    return app.exec();
}

