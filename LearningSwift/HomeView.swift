//
//  ContentView.swift
//  LearningSwift
//
//  Created by Rodney Aiglstorfer on 9/12/22.
//

import SwiftUI


struct HomeView: View {
    @State var sections = [
        TOCSection("Styling Features")
            .addItem("Text Styles", icon: "character.textbox") {
                TextStyles()
            }
            .addItem("Colors", icon: "eyedropper") {
                // TODO: Implement Me
                EmptyView()
            },
        
        TOCSection("Graphics & Animation")
            .addItem("Transitions", icon: "rectangle.portrait.and.arrow.right.fill") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("Matched Geometry Effect", icon: "pip.swap") {
                // TODO: Implement Me
                EmptyView()
            },
        
        TOCSection("Specialty Kits")
            .addItem("Maps & Location", icon: "map") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("JavaScriptCore", icon: "applescript") {
                // TODO: Implement Me
                EmptyView()
            }
    ]
    
    var body: some View {
        TOCView(title: "Learning Swift", sections: $sections)
    }
    
}

struct TOCView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


