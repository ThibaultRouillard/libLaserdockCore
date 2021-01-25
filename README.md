# libLaserdockCore
cmake repository for laserdock library

Windows/Mac/Linux: [![Build status](https://ci.appveyor.com/api/projects/status/mdaio12e06dyvjh9/branch/master?svg=true)](https://ci.appveyor.com/project/sergeywl/liblaserdockcore/branch/master)

# Supported platforms

Windows (msvc2019 x86)
<br>
macOS (clang)
<br>
android (ndk r21 + the latest sdk, arm64/armv7 supported)
<br>
Linux (tested on Ubuntu 18.04)

# Prepare to development

1) Download Qt Online installer from https://www.qt.io/download-qt-installer
2) Run installer and install Qt for mac/windows (the latest version is recommended, library was tested on 5.15, 5.14 is minimal)
3) Download the latest stable cmake if you don't have it already https://cmake.org/download/ Minimum cmake version is 3.11

### Qt Creator:
4) Ensure that Cmake  is available in Qt Creator Preferences -> Kits -> CMake. 
5) Check Qt Creator Preferences -> Kits -> Kits page for any warnings

# How to start:

### Qt Creator:

1) Open root CMakeLists.txt. 
2) Setup build dirs and create them manually. Qt Creator won't do it until you check the corresponding checkbox in Preferences -> Kits -> Cmake. However this checkbox can create unnecessary dirs if you decide to change build dir later.
3) Build & run

### Visual Studio:

1) copy dist.local.cmake and rename it to local.cmake
2) Open local.cmake and set the path `QT_BASE_DIR` to your local Qt installation directory, e.g `d:\Dev\Qt\5.15.0\`
3) Open x86 Native tools command prompt for VS 2019 and go to `libLaserdockCore` dir
4) `mkdir build`
5) `cd build`
6) `cmake -G "Visual Studio 16 2019"  ..`

Instead of step 1-2 you can set `QTDIR` manually by passing it to cmake on this step:
<br>
`cmake -G "Visual Studio 16 2019" -DQTDIR="d:\Dev\Qt\5.15.0\msvc2019" ..`

7) Build & run

### Xcode

1) copy dist.local.cmake and rename it to local.cmake
2) Open local.cmake and set the path `QT_BASE_DIR` to your local Qt installation directory, e.g `/Users/ncuxer/dev/Qt/5.13.0`
3) `cd libLaserdockCore`
4) `mkdir build && cd build`
5) `cmake -G "Xcode" ..` 

Instead of steps 1-2 you can set `QTDIR` on this step:
<br>
`cmake -G "Xcode" -DQTDIR="/Users/ncuxer/dev/Qt/5.13.0/clang_64" ..`

6) open `ldCore.xcodeproj`
7) build and run

# Code Style
Code style helps to read and edit the project easier to all of us.  Please follow it.

### Common
Do not use exceptions.     

Do not use tabs symbols in code. You can setup your IDE to save tabs as spaces (1 tab is 4 spaces).

Try to declare float variables with `f` suffix in a new code - `1.0f` or `1.f` instead of `1.0` or `1`

Try to avoid copy-paste.

### Naming

##### Fields
Recommended class field prefix is _m\_\*_, but try to keep the same style if some old class has other prefix.

##### 
Try to create significant names to variables and functions and avoid short names (except some obvious one like x,y, etc).

### Braces

Please try to keep the existing braces style. 

Clasess/structs/functions should have braces on new line:
```
class ldClass 

{

...

};

void doSomething() 

{

...

}

for/while/if should have braces in the end of the first line: 

for(int i = 0; i < size; i++) {

...

}
``
//It is recommended avoid braces if you have only one line of cycle
//if content. Just leave blank line before and after this construction to make it clear.

if(true)

    doSomething();

```
##### Classes
Common prefix for all classes/structs is _ld\*_. If some class is strictly connected to one mini-app, you can use app name as second prefix - _ldTunes\*_, _ldClock\*_.

##### Member Order
Recommended class member order: _public, public slots, signals, protected slots, protected, private slots, private_. In each section order is: _enum, static functions, constructor, functions, fields_. 

##### Include Order
From common to local:

1. `<The corresponding *.h file (if it is cpp file)\>`

2. `<C++ std module\>`

3. `<Qt Module with explicit submodule> `

4. `<Windows/mac/linux specific>`

5. `<3rdparty library>`

6. `"ldCore/../.."`

7. `"Subfolder/ldClass.h" `

Try to sort includes in each subgroup in an alphabetical order.

<br>Try to use forward declaration of classes in *.h files.

### C++11


##### for
When it is possible try to use C++11 syntax _for_ with iterators, e.g `for(const ldClass &myClass : myClasses) ` instead of index-based for. 

##### Const correctness
Try to use const references for classes/structs in arguments whenever it is possible. If some function doesn't change class field and shouldn't do it in future by design mark this function as _const_ (getters usually).

##### enum class
_enum class_ syntax from C++11 is preferrable instead of old-style enum in most cases. For any enum try to avoid if-else long trees and use `switch(){}` instead.

##### nullptr
In new code use C++11 `nullptr` keyword. 

##### Field initialization
Use C++11 style of variable initialization if it is possible - in \*.h file. If something is initialized from constructor then initialize it in constructor declaration. And initialize field in constructor itself if you don't have other options. All fields should be initialiazed.

##### auto
Use _auto_ keyword only for iterators and lambdas.

##### Smart pointers
Try to avoid using keywords `delete` / `free`  and any manul memory operations. Prefer to use `std::unique_ptr`, `std::shared_ptr` or Qt parent-based object system.


### String

Use QString always when it is possible. `char*` should be avoided generally. `std::string` is not so bad but it creates mess with QString conversions so try to avoid it too.


