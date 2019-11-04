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

//
//  ldAbstractGameVisualizer.h
//  ldCore
//
//  Created by Sergey Gavrushkin 26/05/2017
//  Copyright (c) 2017 Wicked Lasers. All rights reserved.
//

#ifndef ldCore__ldAbstractGameVisualizer__
#define ldCore__ldAbstractGameVisualizer__

#include <memory>

#include "ldCore/Visualizations/ldVisualizer.h"
#include "ldCore/Helpers/Sound/ldSoundEffects.h"
#include "ldCore/Visualizations/Visualizers/Games/Core/ldGameExplosion.h"
#include "ldCore/Visualizations/Visualizers/Games/Core/ldGameFirework.h"
#include "ldCore/Visualizations/Visualizers/Games/Core/ldGameSmoke.h"
#include "ldCore/Visualizations/Visualizers/Games/Core/ldGameSparkle.h"

class ldTextLabel;

/** Base class for each game visualizer */
class LDCORESHARED_EXPORT ldAbstractGameVisualizer : public ldVisualizer
{
    Q_OBJECT
public:
    static QList<QList<ldVec2> > lineListToVertexShapes(const QList<ldVec2> &lineListBricks, float precise = 0.005);
    static QList<QList<ldVec2> > optimizeShapesToLaser(const QList<QList<ldVec2> > &linePathParts, int repeat = 1);

    /** Constructor/destructor */
    explicit ldAbstractGameVisualizer();
    virtual ~ldAbstractGameVisualizer();

    virtual int levelIndex() const;
    virtual QStringList levelList() const;

public slots:
    /** Reset game to initial state */
    virtual void reset() = 0;
    /** Toggle play/pause */
    virtual void togglePlay() = 0;

    /** Enable sound effects*/
    bool isSoundEnabled() const;
    virtual void setSoundEnabled(bool enabled);

    /** Sound level */
    virtual void setSoundLevel(int soundLevel);

    virtual void setLevelIndex(int index);

    void nextLevel();
    void previousLevel();

    virtual void moveX(double /*x*/) {}
    virtual void moveY(double /*y*/) {}

    virtual void moveRightX(double /*x*/) {}
    virtual void moveRightY(double /*y*/) {}

signals:
    /** Signal finished should be emitted manually when game is over*/
    void finished();

protected:
    static const int GAME_DEFAULT_RESET_TIME;

    // State machine.
    enum class ldGameState {
        Reset,
        Playing,
        Paused
    };

    enum class ldPlayingState {
        InGame,
        GameOver
    };

    // Variables used in all games.
    ldGameState m_state = ldGameState::Reset;
    ldPlayingState m_playingState = ldPlayingState::InGame;
    float m_gameTimer = 0.0f;

    virtual void draw() override;

    /** Optional game effects, they will be drawn in ldAbstractGameVisualizer::draw */
    void addExplosion(ldVec2 position, int color = 0xff7700, float size = 0.2f);
    void addFireworks(ldVec2 position, int amount = 5);
    void addSparkle(ldVec2 position);
    void addSmoke (ldVec2 position);

    /** Text label */
    void showMessage(const QString &text, float duration = 0.0f);
    void clearMessage();

    int m_startGameTimerValue = 0;

    ldSoundEffects m_soundEffects;

    QMutex m_mutex;

private:
    /** Game helper labels */
    QScopedPointer<ldTextLabel> m_messageLabel;
    float m_messageLabelTimer = 0.0f;

    /** Optional game objects and effects */
    QList<ldGameExplosion> m_explosions;
    QList<ldGameFirework> m_fireworks;
    QList<ldGameSparkle> m_sparkles;
    QList<ldGameSmoke> m_smokes;
};

#endif /*__ldCore__ldAbstractGameVisualizer__*/