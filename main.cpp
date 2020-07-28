#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <FileUtils.h>
#include <PluginFrameWork.h>

int main(int argc, char *argv[]){
    QCoreApplication::setAttribute(Qt::AA_UseSoftwareOpenGL);
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    Magic::Thread::SetName("Master");
    std::list<std::string> pluginPaths;
    Safe<Magic::ILogAppender> stdOutAppender(new Magic::StdOutLogAppender);
    Safe<Magic::ILogAppender> fileOutAppender(new Magic::FileLogAppender("log.txt"));
    Safe<Magic::ILogAppender> htmlOutAppender(new Magic::HtmlLogAppender("log.html"));
    Magic::LogAppenderMgr::GetInstance()->addILogAppender(htmlOutAppender);
    Magic::LogAppenderMgr::GetInstance()->addILogAppender(fileOutAppender);
    Magic::LogAppenderMgr::GetInstance()->addILogAppender(stdOutAppender);
    Safe<QQmlApplicationEngine> engine(new QQmlApplicationEngine);
    Safe<Magic::PluginFramework> frameWork(new Magic::PluginFramework);
    std::string pluginToolPath = QGuiApplication::applicationDirPath().toStdString().append("/PluginTool");
    frameWork->setProperty("QmlEngine",engine.get());
    if(Magic::ReadFileList(pluginToolPath,pluginPaths) && !pluginPaths.empty()){
        for(auto& v : pluginPaths){
            if(v.find(".dll") != std::string::npos){
                frameWork->installPlugin(v);
            }
        }
        auto& plugins = frameWork->getPlugins();
        
        if(plugins.empty()){
            MAGIC_FATAL() << "Not Found Plugins";
            return EXIT_FAILURE;
        }

        for(auto& v: plugins){
            v.second->start();
        }

    }else{
        return EXIT_FAILURE;
    }
    return app.exec();
}
