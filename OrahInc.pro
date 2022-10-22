QT += quick
CONFIG += qml_debug

SOURCES += \
        main.cpp \
        user.cpp

resources.files = main.qml 
resources.prefix = /$${TARGET}
RESOURCES += resources \
    qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

#ios {
#    QMAKE_INFO_PLIST = ios/info.plist
#}

#ios {
#    app_launch_images.files = $$PWD/ios/Launch.xib $$files($$PWD/ios/LaunchImage*.png)
#    QMAKE_BUNDLE_DATA += app_launch_images
#}

FORMS +=

DISTFILES += \
    dashboard.qml \
    login.qml \
    resources/info.plist

HEADERS += \
    user.h


