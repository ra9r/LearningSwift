//
//  SegmentedPickerView.swift
//  SwiftJourney
//
//  Created by Rodney Aiglstorfer on 9/22/22.
//

import SwiftUI

struct SegmentedPickerView: View {
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
    }
}

struct SegmentedPickerView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedPickerView()
    }
}
