#include <QGuiApplication>
#include <QQmlApplicationEngine>


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;


//    QObject::connect(&sig, &Signal::textSignal,
//                       &slo, &Slot::onSlotMessage);

    QObject::connect(&engine, &QQmlApplicationEngine::objectCreationFailed,
                        &app, []() { QCoreApplication::exit(-1); },
                            Qt::QueuedConnection);
                            
    engine.loadFromModule("Ex_00_Hello_World", "Main");

    return app.exec();
}
