//
//  TabSegmentTOC.swift
//  LearningSwift
//
//  Created by Rodney Aiglstorfer on 9/16/22.
//

import SwiftUI

struct TabSegmentTOC: View {
    @State private var favoriteColor = "Red"

    var body: some View {
        VStack() {
            Picker("What is your favorite color?", selection: $favoriteColor) {
                Text("Red").tag("Red")
                Text("Green").tag("Green")
                Text("Blue").tag("Blue")
            }
            .pickerStyle(.segmented)

            Text("Value: \(favoriteColor)")
            Spacer()
        }.padding(20)
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle("Segments")
       
    }
}

struct TabSegmentTOC_Previews: PreviewProvider {
    static var previews: some View {
        TabSegmentTOC()
    }
}
