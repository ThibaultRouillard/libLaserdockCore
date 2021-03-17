/**
    libLaserdockCore
    Copyright(c) 2018 Wicked Lasers

    This file is part of libLaserdockCore.

    libLaserdockCore is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    libLaserdockCore is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with libLaserdockCore.  If not, see <https://www.gnu.org/licenses/>.
**/

#include "ldCoreExample2.h"

#include <QtGui/QGuiApplication>
#include <QtCore/QtDebug>
#include <QtCore/QTimer>
#include <QtQml/QtQml>

#include <ldCore/ldCore.h>
#include <ldCore/Sound/ldSoundDeviceManager.h>
#include <ldCore/Visualizations/ldVisualizationTask.h>


#ifdef LD_CORE_RESOURCES_EXTRACTOR
#include <ldCore/Android/ldResourcesExtractor.h>

#ifndef LD_EXAMPLE_PACKAGE_NAME
#error LD_EXAMPLE_PACKAGE_NAME should be defined
#endif

#ifndef LD_EXAMPLE_RESOURCES_VERSION_CODE
#error LD_EXAMPLE_RESOURCES_VERSION_CODE should be defined
#endif

#endif // LD_CORE_RESOURCES_EXTRACTOR

#include "ldSpiralFighterGame.h"

#include "src/Visualizations/Visualizers/Animation/ldAnimationVisualizer.h"
#include "src/Visualizations/Visualizers/Clock/ldAnalogClockVisualizer.h"
#include "src/Visualizations/Visualizers/Simple/ldCircleVisualizer.h"
#include "src/Visualizations/Visualizers/Simple/ldSquareVisualizer.h"
#include "src/Visualizations/Visualizers/Spectrum/ldSpectrumBandVisualizer.h"

ldCoreExample::ldCoreExample(QObject *parent)
    : QObject(parent)
    , m_ldCore(ldCore::create(parent))

{
    // qmlRegisterAnonymousType<ldCore>("WickedLasers", 1);
    // qmlRegisterAnonymousType<ldSpiralFighterGame>("WickedLasers", 1);

    m_ldCore->initialize();
    m_ldCore->task()->setIsShowLogo(true);
    m_ldCore->task()->start();
    // m_ldCore->soundDeviceManager()->setDeviceInfo(m_ldCore->soundDeviceManager()->getDefaultDevice(ldSoundDeviceInfo::Type::QAudioInput));
    startApp();
}

ldCoreExample::~ldCoreExample()
{
}

void ldCoreExample::init()
{
    // init qml
    // m_qmlEngine->rootContext()->setContextObject(this);
    // m_qmlEngine->load(QUrl(QStringLiteral("qrc:/qml/main.qml")));
    // if(m_qmlEngine->rootObjects().isEmpty()) {
    //     QTimer::singleShot(0, qApp, &QGuiApplication::quit);
    //     return;
    // }

    ldCore::instance()->task()->setVisualizer(m_visualizers[0].get());
}

void ldCoreExample::activateVis(int index)
{
    if(index < 5) {
        ldCore::instance()->task()->setVisualizer(m_visualizers[index].get());
        // m_game->set_isActive(false);
    } else {
        // m_game->set_isActive(true);
    }
}

void ldCoreExample::setWindow(QObject *window)
{
    // window->installEventFilter(m_game);
}

void ldCoreExample::startApp()
{
    m_visualizers.push_back(std::unique_ptr<ldVisualizer>(new ldCircleVisualizer));
    // m_visualizers.push_back(std::unique_ptr<ldVisualizer>(new ldSquareVisualizer));
    // m_visualizers.push_back(std::unique_ptr<ldVisualizer>(new ldSpectrumBandVisualizer));
    // m_visualizers.push_back(std::unique_ptr<ldVisualizer>(new ldAnimationVisualizer(ldCore::instance()->resourceDir() + "/ldva2/Go-Go Girl.ldva2")));
    // m_visualizers.push_back(std::unique_ptr<ldVisualizer>(new ldAnalogClockVisualizer));

    // m_game = new ldSpiralFighterGame(this);
    
    QTimer::singleShot(0, this, &ldCoreExample::init);
 
}
