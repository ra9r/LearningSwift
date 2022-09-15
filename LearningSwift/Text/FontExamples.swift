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
            VStack(spacing: 20) {
                Description("These are all examples of the standard .font options available in the SwiftUI")
                LargeTitleAndHeadlines()
                
                Description("These are examples of title levels")
                TitleLevels()
                
                Description("These are all examples of captions and other special use font styles")
                CalloutsAndCaptions()
                
                
                Description("This is fully custom examples that use the .system option for the styling")
                SystemFontExamples()
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

struct Description: View {
    var text: String
    init(_ text: String) {
        self.text = text
    }
    var body: some View {
        Text(text)
            .font(.callout)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct CalloutsAndCaptions: View {
    var body: some View {
        Group {
            Divider()
            
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
    }
}

struct TitleLevels: View {
    var body: some View {
        Group {
            Divider()
            Text(".title")
                .font(.title)
            
            Text(".title2")
                .font(.title2)
            
            Text(".title3")
                .font(.title3)
        }.frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct LargeTitleAndHeadlines: View {
    var body: some View {
        Group {
            Divider()
            Text(".largeTitle")
                .font(.largeTitle)
            
            
            Text(".headline")
                .font(.headline)
            
            Text(".subheadline")
                .font(.subheadline)
            
        }.frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct SystemFontExamples: View {
    var body: some View {
        Group {
            Divider()
            Text("System 40")
                .font(.system(size: 24))
            
            Text("System 40 Bold")
                .font(.system(size: 24, weight: .bold))
            
            Text("System 40 monospaced")
                .font(.system(size: 24, design: .monospaced))
            
            Text("System 40 bold rounded")
                .font(.system(size: 24, weight: .bold, design: .rounded))
            
            
        }.frame(maxWidth: .infinity, alignment: .leading)
    }
}
