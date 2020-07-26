#pragma once
#include <PluginFramework.h>

namespace Launcher{
    class LauncherService{
    public:
    virtual ~LauncherService(){}
    };
}
MAGIC_SERVICE(Launcher::LauncherService,"com.Launcher.LauncherService")
