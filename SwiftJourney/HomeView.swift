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
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            }
            .addItem("Shapes & Masks", icon: "star.square.fill") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            },
        
        TOCSection("Layouts")
            .addItem("H, V and Z Stacks", icon: "align.horizontal.center") {
                // TODO: Implement Me
                HStackStudy()
            }
            .addItem("Scroll View", icon: "scroll") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            }
            .addItem("Grid View", icon: "square.grid.3x3") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            }
            .addItem("Lazy Layouts", icon: "rectangle.split.3x3") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            },
        
        TOCSection("Standard Components")
            .addItem("Lists", icon: "list.dash") {
                TextStyles()
            }
            .addItem("Tabs & Segments", icon: "folder") {
                // TODO: Implement Me
                PickerStudiesView()
            }
            .addItem("Forms", icon: "character.textbox") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            }
            .addItem("Side Menu", icon: "sidebar.leading") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            }
            .addItem("Toggles", icon: "switch.2") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            }
            .addItem("Buttons", icon: "cursorarrow.click") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            }
            .addItem("Progress Indicators", icon: "timelapse") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            }
            .addItem("Sliders", icon: "slider.horizontal.3") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            }
            .addItem("Pickers", icon: "rectangle.arrowtriangle.2.outward") {
                PickerStudiesView()
            }
            .addItem("Sheets", icon: "arrow.up.square") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            }
            .addItem("Charts", icon: "chart.xyaxis.line") {
                ChartStudyView()
            }
        
        
        ]
    @State private var advancedSections = [
        
        TOCSection("Graphics & Animation")
            .addItem("Animating Buttons", icon: "cursorarrow.click") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            }
            .addItem("Timers", icon: "timer") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            }
            .addItem("Screen Transitions", icon: "rectangle.portrait.and.arrow.right.fill") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            }
            .addItem("Matched Geometry Effect", icon: "pip.swap") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            },
        
        TOCSection("Data Management")
            .addItem("Core Data", icon: "arrow.counterclockwise.icloud") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            }
            .addItem("REST Services", icon: "network") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            }
            .addItem("Alerts & Notifications", icon: "exclamationmark.triangle") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            }
            .addItem("JSON Codeable", icon: "arrow.counterclockwise.icloud") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            }
            .addItem("Multipeer Connectivity", icon: "network") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            }
            .addItem("JavaScriptCore", icon: "applescript") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            },
        
        TOCSection("Specialty Topics")
            .addItem("Maps & Location", icon: "map") {
                // TODO: Implement Me
                MapStudy()
            }
            .addItem("Authentication", icon: "applescript") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            }
            .addItem("StoreKit", icon: "applescript") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            }
            .addItem("CloudKit", icon: "icloud") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            }
            .addItem("WebKit", icon: "network") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
            }
            .addItem("Firebase Services", icon: "flame") {
                // TODO: Implement Me
                ContentUnavailableView("Not Implemented Yet!", systemImage: "hammer.circle")
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


