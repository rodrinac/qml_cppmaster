import qbs

Project {
    minimumQbsVersion: "1.7.1"

    CppApplication {
        name: "Imagens"

        files: ["src/*", "qml/qml.qrc", "img/img.qrc"]

        cpp.cxxLanguageVersion: "c++11"
        cpp.defines: "QT_DEPRECATED_WARNINGS"

        Depends { name: "Qt"; submodules: ["core", "quick"] }
    }
}
