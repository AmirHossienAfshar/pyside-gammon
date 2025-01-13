// import QtQuick 6.5
// import QtQuick.Controls 6.5
// import QtQuick.Layouts 1.5
// // import "path/to/your/module" // Adjust this to the actual path

// ApplicationWindow {
//     visible: true
//     width: 800
//     height: 800

//     // First instance
//     MainPage {
//         id: instance1
//         width: 300
//         height: 300
//         backgroundColor: "blue"
//         dropArea_A1.dropName: "1"
//         dropArea_A2.dropName: "2"
//         dropArea_A3.dropName: "3"
//         dropArea_A4.dropName: "4"
//         dropArea_A5.dropName: "5"
//         dropArea_A6.dropName: "6"
        
//         dropArea_B1.dropName: "13"
//         dropArea_B2.dropName: "14"
//         dropArea_B3.dropName: "15"
//         dropArea_B4.dropName: "16"
//         dropArea_B5.dropName: "17"
//         dropArea_B6.dropName: "18"
//     }

//     // Second instance
    // MainPage {
    //     id: instance2
        
    //     anchors.left: instance1.right
    //     width: 300
    //     height: 300
    //     backgroundColor: "green"
        
    //     dropArea_A1.dropName: "7"
    //     dropArea_A2.dropName: "8"
    //     dropArea_A3.dropName: "9"
    //     dropArea_A4.dropName: "10"
    //     dropArea_A5.dropName: "11"
    //     dropArea_A6.dropName: "12"

    //     dropArea_B1.dropName: "19"
    //     dropArea_B2.dropName: "20"
    //     dropArea_B3.dropName: "21"
    //     dropArea_B4.dropName: "22"
    //     dropArea_B5.dropName: "23"
    //     dropArea_B6.dropName: "24"
    // }
// }import QtQuick 6.5
import QtQuick 6.5
import QtQuick.Shapes 1.8
import QtQuick.Layouts 1.5
import QtQuick.Controls 6.5

ApplicationWindow {
    id: main_window
    visible: true
    width: 1000
    height: 600
    color: "#8B5A2B" // Background color for the entire window

    // Outer border
    Rectangle {
        id: borderContainer
        anchors.fill: parent
        border.color: "black"
        border.width: 5
        color: "#A0522D" // Border color around the boards

        RowLayout {
            id: mainLayout
            anchors.fill: parent
            anchors.margins: 10 // Add margins to create spacing around inner content
            spacing: 50 // Increased spacing between the elements

            // Left Drop Area (Rectangle)
            Rectangle {
                id: leftDropArea
                Layout.fillHeight: true
                width: 50 // Fixed width for the left drop area
                color: "#8B4513" // Dark brown color for the left drop area
                border.color: "black"
                border.width: 2
                // Add properties for future drag/drop functionality
            }

            // First Board Container
            Rectangle {
                id: board1Container
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.color: "black"
                border.width: 3
                color: "#D2691E" // Light brown color for the first board

                // First MainPage
                MainPage {
                    id: instance1
                    anchors.fill: parent // Fill the container
                    backgroundColor: "blue"

                    // Drop area settings
                    dropArea_A1.dropName: "1"
                    dropArea_A2.dropName: "2"
                    dropArea_A3.dropName: "3"
                    dropArea_A4.dropName: "4"
                    dropArea_A5.dropName: "5"
                    dropArea_A6.dropName: "6"

                    dropArea_B1.dropName: "13"
                    dropArea_B2.dropName: "14"
                    dropArea_B3.dropName: "15"
                    dropArea_B4.dropName: "16"
                    dropArea_B5.dropName: "17"
                    dropArea_B6.dropName: "18"
                }
            }

            // Second Board Container
            Rectangle {
                id: board2Container
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.color: "black"
                border.width: 3
                color: "#D2691E" // Light brown color for the second board

                // Second MainPage
                MainPage {
                    id: instance2
                    anchors.fill: parent // Fill the container
                    backgroundColor: "green"

                    // Drop area settings
                    dropArea_A1.dropName: "7"
                    dropArea_A2.dropName: "8"
                    dropArea_A3.dropName: "9"
                    dropArea_A4.dropName: "10"
                    dropArea_A5.dropName: "11"
                    dropArea_A6.dropName: "12"

                    dropArea_B1.dropName: "19"
                    dropArea_B2.dropName: "20"
                    dropArea_B3.dropName: "21"
                    dropArea_B4.dropName: "22"
                    dropArea_B5.dropName: "23"
                    dropArea_B6.dropName: "24"
                }
            }

            // Right Drop Area (Rectangle)
            Rectangle {
                id: rightDropArea
                Layout.fillHeight: true
                width: 50 // Fixed width for the right drop area
                color: "#8B4513" // Dark brown color for the right drop area
                border.color: "black"
                border.width: 2
                // Add properties for future drag/drop functionality
            }
        }
    }
    Darggable_Marble_Light {
        x: 100
        y: 100
        width: main_window.width / 20
        height: main_window.width / 20
        Drag.keys: ["Marble_Light_1"]
    }

    Darggable_Marble_Light {
        x: 200
        y: 200
        width: main_window.width / 20
        height: main_window.width / 20
        Drag.keys: ["Marble_Light_1"]
    }
    
    Darggable_Marble_Light {
        x: 100
        y: 100
        width: main_window.width / 20
        height: main_window.width / 20
        Drag.keys: ["Marble_Light_1"]
    }
}

    //     Darggable_Marble_Light {
    //     x: 20
    //     y: 200
    //     width: parent.width / 8
    //     height: parent.width / 8
    //     Drag.keys: ["Marble_Light_1"]
    // }

    //     Darggable_Marble_Light {
    //     width: parent.width / 8
    //     height: parent.width / 8
    //     Drag.keys: ["Marble_Light_1"]
    // }

    //     Darggable_Marble_Light {
    //     width: parent.width / 8
    //     height: parent.width / 8
    //     Drag.keys: ["Marble_Light_1"]
    // }


