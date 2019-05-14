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

#ifndef LDFILTER
#define LDFILTER

#include "ldCore/ldCore_global.h"
#include "ldCore/Utilities/ldBasicDataStructures.h"

#include <QQmlHelpers>

#define LD_WRITABLE_MIN_MAX_PROPERTY(type, property) QML_WRITABLE_PROPERTY(type, property) \
    QML_CONSTANT_PROPERTY(type, min_##property) \
    QML_CONSTANT_PROPERTY(type, max_##property)

/** Shader */
class LDCORESHARED_EXPORT ldShader : public QObject
{
    Q_OBJECT
public:
    virtual void ShaderFunc(float *x, float *y, uint32_t *color) = 0;
    virtual ~ldShader(){}
};

/** Abstract filter interface. Filters are applied to Vertex data directly */
class LDCORESHARED_EXPORT ldFilter : public ldShader
{
    Q_OBJECT
    LD_WRITABLE_MIN_MAX_PROPERTY(float, intensity)
public:
    /** Constructor */
    ldFilter();
    /** Destructor */
    virtual ~ldFilter(){}

    virtual void processFilter(Vertex &input);

    /** Optional filter name */
    virtual QString name() { return QString(); }

    /** Optional flag. Can be set by developer explicitly if filter is reactive to music analyzer */
    virtual bool isMusicAware() const { return false; }

protected:
    /** Filters implement this function to filter points.
        Input is the source vertex, processing is done in-place with a ref param */
    virtual void process(Vertex &input) = 0;

private:
    void normalize(Vertex &input, const Vertex &source);

    // shader function adapter
    virtual void ShaderFunc(float *x, float *y, uint32_t *color) override;
};

#endif // LDFILTER

