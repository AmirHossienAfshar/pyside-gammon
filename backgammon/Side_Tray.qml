import QtQuick 2.15

Rectangle {
    id: rightDropArea
    // Layout.fillHeight: true
    width: 50 // Fixed width for the right drop area
    color: "#8B4513" // Dark brown color for the right drop area
    border.width: 2
    // Add properties for future drag/drop functionality
    property bool marbleHovered: false  // Tracks hover state
    property string dropName: "right"
    DropArea {
        anchors.fill: parent
        onEntered: {
            console.log("Drag entered right drop area")
            rightDropArea.marbleHovered = true;
        }
        onExited: {
            rightDropArea.marbleHovered = false;
            console.log("Drag left right drop area")
        }
        onDropped: {
            console.log("Item dropped in right drop area with keys:", drag.source.Drag.keys)
            console.log("Drop area name:", rightDropArea.dropName)
            rightDropArea.marbleHovered = false;
        }
    }

    border.color: marbleHovered ? "gold" : "black" // Change border color on hover
}
