import QtQuick
import QtQuick.Window
import QtQuick.Controls

ApplicationWindow {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("VimSouls Editor")

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            Action { text: qsTr("&New…")     }
            Action { text: qsTr("&Open…")    }
            Action { text: qsTr("&Save")     }
            Action { text: qsTr("Save &As…") }
            MenuSeparator {}
            Action { text: qsTr("&Quit") }
        }

        Menu {
            title: qsTr("&Window")
            Action { text: qsTr("Filesystem &Tree") }
            Action { text: qsTr("Ob&jects Manager") }
        }
    }
}

