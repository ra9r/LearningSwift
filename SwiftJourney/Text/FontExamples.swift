//
//  FontExamples.swift
//  LearningSwift
//
//  Created by Rodney Aiglstorfer on 9/13/22.
//

import SwiftUI

struct FontExamples: View {
    var body: some View {
        ScrollView {
            block("These are all examples of the standard .font options available in the SwiftUI") {
                Text(".largeTitle")
                    .font(.largeTitle)
                
                
                Text(".headline")
                    .font(.headline)
                
                Text(".subheadline")
                    .font(.subheadline)
            }
            
            block("These are examples of title levels") {
                Text(".title")
                    .font(.title)
                
                Text(".title2")
                    .font(.title2)
                
                Text(".title3")
                    .font(.title3)
            }
            
            block("These are all examples of captions and other special use font styles") {
                Text(".callout")
                    .font(.callout)
                
                Text(".caption")
                    .font(.caption)
                
                Text(".caption2")
                    .font(.caption2)
                
                Text(".footnote")
                    .font(.footnote)
                
                Text(".body")
                    .font(.body)
            }
            
            block("This is fully custom examples that use the .system option for the styling") {
                Text("System 40")
                    .font(.system(size: 24))
                
                Text("System 40 Bold")
                    .font(.system(size: 24, weight: .bold))
                
                Text("System 40 monospaced")
                    .font(.system(size: 24, design: .monospaced))
                
                Text("System 40 bold rounded")
                    .font(.system(size: 24, weight: .bold, design: .rounded))
            }
        }
        .navigationBarTitleDisplayMode(.large)
        .navigationTitle("Fonts")
    }
    
    
}

@ViewBuilder func block(_ desc: String, @ViewBuilder content: @escaping () -> some View)  -> some View {
    ZStack {
        Color.theme.backgroundColor
            .clipShape(RoundedRectangle(cornerRadius: 5))
            
        
        Text(desc)
            .padding(20)
            .foregroundColor(Color.theme.mainColor)
            .font(.callout)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .frame(width: .infinity, alignment: .center)
        
    }.padding(10)
    Group {
        content()
    }.padding(5)
}


struct FontExamples_Previews: PreviewProvider {
    static var previews: some View {
        FontExamples()
    }
}
