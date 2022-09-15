//
//  HelloWorldView.swift
//  LearningSwift
//
//  Created by Rodney Aiglstorfer on 9/12/22.
//

import SwiftUI

struct TextStyles: View {
    @State var sections = [
        TOCSection("Font Examples")
            .addItem("Default Fonts", icon: "textformat") {
                FontExamples()
            }
            .addItem("Font Weights", icon: "scalemass") {
                FontWeightExample()
            }
            .addItem("Custom Fonts", icon: "paintbrush") {
                // TODO: Implement Me
                EmptyView()
            },
        TOCSection("Text Examples")
            .addItem("Text Alignment", icon: "align.horizontal.left") {
                // TODO: Implement Me
                EmptyView()
            }
            .addItem("Text Rotation", icon: "rotate.left") {
                // TODO: Implement Me
                EmptyView()
            }
    ]
    
    var body: some View {
        TOCView(title: "Using Text", sections: $sections)
    }
}

struct TextStyles_Previews: PreviewProvider {
    static var previews: some View {
        TextStyles()
    }
}


