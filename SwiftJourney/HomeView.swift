//
//  ContentView.swift
//  LearningSwift
//
//  Created by Rodney Aiglstorfer on 9/12/22.
//

import SwiftUI

enum TOCSections: String {
    case basic = "Basic"
    case advanced = "Adanced"
}

struct HomeView: View {
    @State private var chosenSegment = TOCSections.basic
    @State private var basicSections = [
        TOCSection("Styling Features")
            .addItem("Text Styles", icon: "character.textbox") {
                TextStyles()
            }
            .addItem("Colors & Gradients", icon: "eyedropper") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("Shapes & Masks", icon: "star.square.fill") {
                // TODO: Implement Me
                EmptyView()
            },
        
        TOCSection("Layouts")
            .addItem("H, V and Z Stacks", icon: "align.horizontal.center") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("Scroll View", icon: "scroll") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("Grid View", icon: "square.grid.3x3") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("Lazy Layouts", icon: "rectangle.split.3x3") {
                // TODO: Implement Me
                EmptyView()
            },
        
        TOCSection("Standard Components")
            .addItem("Lists", icon: "list.dash") {
                TextStyles()
            }
            .addItem("Tabs & Segments", icon: "folder") {
                // TODO: Implement Me
                TabSegmentTOC()
            }
            .addItem("Side Menu", icon: "sidebar.leading") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("Toggles", icon: "switch.2") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("Buttons", icon: "cursorarrow.click") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("Progress Indicators", icon: "timelapse") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("Sliders", icon: "slider.horizontal.3") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("Pickers", icon: "rectangle.arrowtriangle.2.outward") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("Sheets", icon: "arrow.up.square") {
                // TODO: Implement Me
                EmptyView()
            }
        
        
        ]
    @State private var advancedSections = [
        
        TOCSection("Graphics & Animation")
            .addItem("Animating Buttons", icon: "cursorarrow.click") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("Timers", icon: "timer") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("Screen Transitions", icon: "rectangle.portrait.and.arrow.right.fill") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("Matched Geometry Effect", icon: "pip.swap") {
                // TODO: Implement Me
                EmptyView()
            },
        
        TOCSection("Data Management")
            .addItem("Core Data", icon: "arrow.counterclockwise.icloud") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("REST Services", icon: "network") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("Alerts & Notifications", icon: "exclamationmark.triangle") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("JSON Codeable", icon: "arrow.counterclockwise.icloud") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("Multipeer Connectivity", icon: "network") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("JavaScriptCore", icon: "applescript") {
                // TODO: Implement Me
                EmptyView()
            },
        
        TOCSection("Specialty Topics")
            .addItem("Maps & Location", icon: "map") {
                // TODO: Implement Me
                MapStudy()
            }
            .addItem("Authentication", icon: "applescript") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("StoreKit", icon: "applescript") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("CloudKit", icon: "icloud") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("WebKit", icon: "network") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("Firebase Services", icon: "flame") {
                // TODO: Implement Me
                EmptyView()
            }
        
        
    ]
    
    var body: some View {
        NavigationStack {
            Picker("What is your favorite color?", selection: $chosenSegment) {
                Text("Basic").tag(TOCSections.basic)
                Text("Advanced").tag(TOCSections.advanced)
            }
            .pickerStyle(.segmented)
            .padding(10)
           
            switch (chosenSegment) {
            case .basic:
                TOCView(title: "Basic Concepts", sections: $basicSections )
            case .advanced:
                TOCView(title: "Advanced Concepts", sections: $advancedSections )
            }
        }

    }
    
}

struct TOCView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


