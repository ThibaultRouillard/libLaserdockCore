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

#ifndef LDHARDWAREMANAGER_H
#define LDHARDWAREMANAGER_H

#include <QtCore/QObject>

#include "ldCore/ldCore_global.h"

class ldAbstractHardwareManager;
class ldFilterManager;
class ldHardware;

class LDCORESHARED_EXPORT ldHardwareManager : public QObject
{
    Q_OBJECT

public:
    explicit ldHardwareManager(ldFilterManager *filterManager, QObject *parent = nullptr);
    ~ldHardwareManager();

    int getDeviceCount() const;
    std::vector<ldHardware*> devices() const;

    std::vector<ldAbstractHardwareManager*> hardwareManagers() const;

    ldFilterManager *filterManager() const;

public slots:
    void addHardwareManager(ldAbstractHardwareManager *hardwareManager);

    void setConnectedDevicesActive(bool active);
    void setExplicitActiveDevice(int index);

signals:
    void deviceCountChanged(uint count);

private:
    void setDeviceCount(uint deviceCount);
    void updateDeviceCount();

    uint m_deviceCount = 0;

    std::vector<ldAbstractHardwareManager*> m_hardwareManagers;

    ldFilterManager *m_filterManager;
};

#endif // LDHARDWAREMANAGER_H
