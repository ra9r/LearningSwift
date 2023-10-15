//
//  DatePickerView.swift
//  SwiftJourney
//
//  Created by Rodney Aiglstorfer on 9/22/22.
//

import SwiftUI

struct DatePickerView: View {
    @State var selectedDate: Date = Date.now
    var body: some View {
        DatePicker("Choose a Date", selection: $selectedDate)
            .datePickerStyle(.graphical)
            .labelsHidden()
            
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
