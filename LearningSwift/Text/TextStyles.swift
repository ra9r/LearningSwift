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
        .addItem("Font Examples") {
            FontExamples()
        }
        .addItem("Font Weight Examples") {
            FontWeightExample()
        }
    ]
    
    var body: some View {
        TOCView(title: "Text Styling", sections: $sections)
    }
}

struct TextStyles_Previews: PreviewProvider {
    static var previews: some View {
        TextStyles()
    }
}


