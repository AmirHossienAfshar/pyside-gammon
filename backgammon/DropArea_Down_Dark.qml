import QtQuick 2.15
import QtQuick.Shapes 1.8

Rectangle {
    id: triangleContainer
    width: 120
    height: 300
    color: "transparent"

    property int marble_numbers: 0                  // Number of marbles
    property var marble_list: []                    // List of marble identifiers
    property string current_color: "None"           // Current color ("Light", "Dark", or "None")

    property bool marbleHovered: false  // Tracks hover state
    property string dropName: ""
    
    Shape {
        id: triangle
        width: parent.width
        height: parent.height
        anchors.fill: parent

        ShapePath {
            strokeWidth: 2
            strokeColor: marbleHovered ? "gold" : "black" // Change color on hover
            fillGradient: LinearGradient {
                x1: 0; y1: 0
                x2: width; y2: height
                GradientStop { position: 0; color: "saddlebrown" }
                GradientStop { position: 1; color: marbleHovered ? "chocolate" : "darkgoldenrod" }
            }
            startX: width / 2; startY: height // Start at the bottom-center
            PathLine { x: width; y: 0 }       // Top-right
            PathLine { x: 0; y: 0 }          // Top-left
            PathLine { x: width / 2; y: height } // Close back to the bottom
        }
    }

    DropArea {
        anchors.fill: parent
        onEntered:
        {
            console.log("Drag entered drop area: ", dropName)
            marbleHovered = true;
        }
    //     onDropped:
    //     {
    //         console.log("///////////////////DROP/////////////////////////")
    //         console.log("Item dropped with keys:", drag.source.Drag.keys)
    //         console.log("Item dropped at the name:", dropName)
    //         marbleHovered = false;
    //     } 
    //     onExited: {
    //         marbleHovered = false;
    //         console.log("Drag left drop area: ", dropName)
    //     }
        onDropped: {
            console.log("///////////////////DROP/////////////////////////")
            let droppedKeys = drag.source.Drag.keys;
            if (droppedKeys.length > 0) {
                let marbleName = droppedKeys[0]; // Example: "Marble_Light_1"

                // Add marble only if it's not already in the list
                if (!marble_list.includes(marbleName)) {
                    marble_list.push(marbleName);
                    marble_numbers += 1;

                    // Determine and update the current color
                    if (marbleName.includes("Light")) {
                        current_color = "Light";
                    } else if (marbleName.includes("Dark")) {
                        current_color = "Dark";
                    }
                }
                console.log("Updated marble list:", marble_list);
                console.log("Marble count:", marble_numbers);
                console.log("Current color:", current_color);
            }
            marbleHovered = false;
        }

        onExited: {
            console.log("Drag left drop area: ", dropName);
            marbleHovered = false;

            // Remove marble if it exits the area
            let exitedKeys = drag.source.Drag.keys;
            if (exitedKeys.length > 0) {
                let marbleName = exitedKeys[0]; // Example: "Marble_Light_1"

                // Remove marble from list if it exists
                let index = marble_list.indexOf(marbleName);
                if (index !== -1) {
                    marble_list.splice(index, 1);
                    marble_numbers -= 1;
                }

                // Update the current color based on the remaining marbles
                if (marble_list.length > 0) {
                    if (marble_list.some(m => m.includes("Light"))) {
                        current_color = "Light";
                    } else if (marble_list.some(m => m.includes("Dark"))) {
                        current_color = "Dark";
                    }
                } else {
                    current_color = "None"; // No marbles left
                }

                console.log("Updated marble list after exit:", marble_list);
                console.log("Marble count after exit:", marble_numbers);
                console.log("Current color:", current_color);
            }
        }
    }

    // Optional debug information
    Text {
        id: debugText
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Marbles: " + marble_numbers// + ", List: " + marble_list + ", Color: " + current_color
        color: "red"
        font.pixelSize: 12
        visible: true
    }   
}

    // Text {
    //     id: debugText
    //     anchors.centerIn: parent
    //     text: marbleHovered ? "Hovered" : ""
    //     color: "red"
    //     font.pixelSize: 20
    //     visible: marbleHovered
    // }


