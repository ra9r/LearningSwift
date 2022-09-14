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
            VStack {
                Group {
                    Text(".largeTitle")
                        .font(.largeTitle)
                        .foregroundColor(.theme.headlineColor)
                        .background {
                            Color.theme.backgroundColor
                        }
                    
                    
                    Text(".headline")
                        .font(.headline)
                    
                    Text(".subheadline")
                        .font(.subheadline)
                    
                }.frame(maxWidth: .infinity, alignment: .leading)
                
                Divider()
                Group {
                    Text(".title")
                        .font(.title)
                    
                    Text(".title2")
                        .font(.title2)
                    
                    Text(".title3")
                        .font(.title3)
                }.frame(maxWidth: .infinity, alignment: .leading)
                
                Divider()
                Group {
                    
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
                    
                }.frame(maxWidth: .infinity, alignment: .leading)
            }.padding()
        }
        .navigationBarTitleDisplayMode(.large)
        .navigationTitle("Fonts")
    }
}


struct FontExamples_Previews: PreviewProvider {
    static var previews: some View {
        FontExamples()
    }
}
