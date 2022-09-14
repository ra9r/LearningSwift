//
//  HelloWorldView.swift
//  LearningSwift
//
//  Created by Rodney Aiglstorfer on 9/12/22.
//

import SwiftUI

struct TextStyles: View {
    
    var body: some View {
        NavigationStack{
            List {
                NavigationLink("Font Examples") {
                    FontExamples()
                }
                
                NavigationLink("Font Weight Examples") {
                    FontWeightExample()
                }
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle("Text Styling")
            .navigationViewStyle(.automatic)
        }
    }
}

struct TextStyles_Previews: PreviewProvider {
    static var previews: some View {
        TextStyles()
    }
}


