import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick.Layouts 1.5

ApplicationWindow {
    visible: true
    width: 600
    height: 600
    color: "#b68b35"



    // Row at the top
    RowLayout {
        id: row1
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.height / 3
        spacing: 0 // Ensure no extra space between items

        DropArea_Down_Dark {
            Layout.preferredWidth: parent.width / 6.1
            Layout.fillHeight: true
            dropName: "1"
        }
        DropArea_Down_Light {
            Layout.preferredWidth: parent.width / 6.1
            Layout.fillHeight: true
            dropName: "2"
        }
        DropArea_Down_Dark {
            Layout.preferredWidth: parent.width / 6.1
            Layout.fillHeight: true
            dropName: "3"
        }
        DropArea_Down_Light {
            Layout.preferredWidth: parent.width / 6.1
            Layout.fillHeight: true
            dropName: "4"
        }
        DropArea_Down_Dark {
            Layout.preferredWidth: parent.width / 6.1
            Layout.fillHeight: true
            dropName: "5"
        }
        DropArea_Down_Light {
            Layout.preferredWidth: parent.width / 6.1
            Layout.fillHeight: true
            dropName: "6"
        }
    }

    // Row at the bottom
    RowLayout {
        id: row
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.height / 3
        spacing: 0 // Ensure no extra space between items


        DropArea_Up_Light {
            Layout.preferredWidth: parent.width / 6.1
            Layout.fillHeight: true
            dropName: "7"
        }
        DropArea_Up_Dark {
            Layout.preferredWidth: parent.width / 6.1
            Layout.fillHeight: true
            dropName: "8"
        }
        DropArea_Up_Light {
            Layout.preferredWidth: parent.width / 6.1
            Layout.fillHeight: true
            dropName: "9"
        }
        DropArea_Up_Dark {
            Layout.preferredWidth: parent.width / 6.1
            Layout.fillHeight: true
            dropName: "10"
        }
        DropArea_Up_Light {
            Layout.preferredWidth: parent.width / 6.1
            Layout.fillHeight: true
            dropName: "11"
        }
        DropArea_Up_Dark {
            Layout.preferredWidth: parent.width / 6.1
            Layout.fillHeight: true
            dropName: "12"
        }
    }


    Darggable_Marble_Light {
        width: parent.width / 8
        height: parent.width / 8
        Drag.keys: ["Marble_Light_1"]
    }
}
