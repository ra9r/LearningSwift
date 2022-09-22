//
//  FormPickerView.swift
//  SwiftJourney
//
//  Created by Rodney Aiglstorfer on 9/22/22.
//

import SwiftUI

struct FormPickerView: View {
    @State private var favoriteColor = "Red"
    
    var body: some View {
        Form() {
            Picker("What is your favorite color?", selection: $favoriteColor) {
                Text("Red").tag("Red")
                Text("Green").tag("Green")
                Text("Blue").tag("Blue")
            }
            .pickerStyle(.menu)
            
            Text("Value: \(favoriteColor)")
            Spacer()
        }.padding(20)
    }
}

struct FormPickerView_Previews: PreviewProvider {
    static var previews: some View {
        FormPickerView()
    }
}
