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
                EmptyView()
            },
        
        TOCSection("Graphics & Animation")
            .addItem("Transitions", icon: "rectangle.portrait.and.arrow.right.fill") {
                EmptyView()
            }
            .addItem("Matched Geometry Effect", icon: "pip.swap") {
                EmptyView()
            },
        
        TOCSection("Specialty Kits")
            .addItem("Maps & Location", icon: "map") {
                EmptyView()
            }
            .addItem("JavaScriptCore", icon: "applescript") {
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


