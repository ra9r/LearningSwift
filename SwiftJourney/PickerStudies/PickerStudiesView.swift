//
//  TabSegmentTOC.swift
//  LearningSwift
//
//  Created by Rodney Aiglstorfer on 9/16/22.
//

import SwiftUI

struct PickerStudiesView: View {
    
    var body: some View {
        List {
            NavigationLink("Segmented Picker") {
                SegmentedPickerView()
            }
            NavigationLink("Inline Picker") {
                InlinePickerView()
            }
            NavigationLink("Menu Picker") {
                MenuPickerView()
            }
            NavigationLink("Form Picker") {
                FormPickerView()
            }
        }
    }
}

struct PickerStudiesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            PickerStudiesView()
        }
    }
}
