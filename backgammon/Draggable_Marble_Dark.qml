import QtQuick 2.15

Rectangle {
    id: darkMarble
    width: 100
    height: 100
    color: "transparent"

    property bool isTurnProperty: false

    property alias is_turn: darkMarble.isTurnProperty
    property alias dragKeys: darkMarble.dragKeysProperty

    property string dragKeysProperty: ""

    Drag.active: dragArea.drag.active
    Drag.hotSpot.x: width / 2
    Drag.hotSpot.y: height / 2
    Drag.keys: [dragKeys]

    MouseArea {
        cursorShape: Qt.PointingHandCursor
        hoverEnabled: true
        id: dragArea
        anchors.fill: parent
        drag.target: parent
        onReleased: {
            if (dragArea.drag.active) {
                console.log("Releasing drag; calling Drag.drop()");
                parent.Drag.drop();
            }
        }

        // Main Circle with Gradient
        Rectangle {
            id: mainCircle
            anchors.fill: parent
            radius: width / 2
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#5D4037" } // Dark brown top
                GradientStop { position: 1.0; color: "#3E2723" } // Deep dark brown bottom
            }

            // Inner Glow Effect
            Rectangle {
                id: innerGlow
                width: parent.width * 0.8
                height: parent.height * 0.8
                anchors.centerIn: parent
                radius: width / 2
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "transparent" }
                    GradientStop { position: 1.0; color: "#8D6E63" } // Soft brown
                }
            }

            // Reflection Effect
            Rectangle {
                id: reflection
                width: parent.width * 0.4
                height: parent.height * 0.4
                radius: width / 2
                color: "#A1887F" // Light brown reflection
                opacity: 0.4
                anchors {
                    top: parent.top
                    horizontalCenter: parent.horizontalCenter
                    margins: 5
                }
            }

            // Bottom Highlight
            Rectangle {
                id: bottomHighlight
                width: parent.width * 0.5
                height: parent.height * 0.1
                color: "#D7CCC8" // Soft creamy brown highlight
                opacity: 0.3
                anchors {
                    bottom: parent.bottom
                    horizontalCenter: parent.horizontalCenter
                    margins: 2
                }
                radius: height / 2
            }
        }
    }
}
