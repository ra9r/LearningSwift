//
//  ContentView.swift
//  LearningSwift
//
//  Created by Rodney Aiglstorfer on 9/12/22.
//

import SwiftUI


struct TOCView: View {
    
    var body: some View {
        NavigationStack {
            List {
                
                Section("Styling Features") {
                    listItem("Text Styles", icon: "character.textbox") {
                        TextStyles()
                    }
                    listItem("Colors", icon: "eyedropper") {
                        // TODO: Implement
                        EmptyView()
                    }
                    
                }
                Section("Animation") {
                    listItem("Transitions", icon: "rectangle.portrait.and.arrow.right.fill") {
                        // TODO: Implement
                        EmptyView()
                    }
                    listItem("Matched Geometry Effect", icon: "pip.swap") {
                        // TODO: Implement
                        EmptyView()
                    }
                }
                
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle("Features")
        }
    }
    
    func listItem(_ label: String, icon: String, @ViewBuilder destination: () -> some View) -> some View {
        NavigationLink  {
            destination()
        } label: {
            HStack(spacing: 20) {
                Image(systemName: icon)
                Text(label)
            }
        }
    }
}

struct TOCView_Previews: PreviewProvider {
    static var previews: some View {
        TOCView()
    }
}
