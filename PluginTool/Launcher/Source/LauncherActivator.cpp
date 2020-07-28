
#include <PluginContext.h>
#include <QQmlApplicationEngine>

#include "LauncherService.h"
#include "LauncherActivator.h"

namespace Launcher{
    LauncherActivator::~LauncherActivator(){
    }

    void LauncherActivator::onStart(Safe<Magic::PluginContext>& ctx){
        auto& engineRef = ctx->getProperty("QmlEngine");
        auto* engine = std::any_cast<QQmlApplicationEngine*>(engineRef);
        engine->load("qrc:/main.qml");
    }

    void LauncherActivator::onStop(Safe<Magic::PluginContext>& ctx){
    }
}