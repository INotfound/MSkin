#pragma once
#include <PluginActivator.h>

namespace Launcher{
    class LauncherActivator: public Magic::IPluginActivator{
    public:
        ~LauncherActivator();
        void onStart(Safe<Magic::PluginContext>&) override;
        void onStop(Safe<Magic::PluginContext>&) override;
    };
}
MAGIC_PLUGIN(Launcher::LauncherActivator)
