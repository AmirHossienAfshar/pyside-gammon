import QtQuick 2.15
import QtQuick.Shapes 1.8

Rectangle {
    id: triangleContainer
    width: 120
    height: 300
    color: "transparent"

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
        onDropped:
        {
            console.log("///////////////////DROP/////////////////////////")
            console.log("Item dropped with keys:", drag.source.Drag.keys)
            console.log("Item dropped at the name:", dropName)
            marbleHovered = false;
        } 
        onExited: {
            marbleHovered = false;
            console.log("Drag left drop area: ", dropName)
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
}

