//
//  ContentView.swift
//  LearningSwift
//
//  Created by Rodney Aiglstorfer on 9/12/22.
//

import SwiftUI

struct TOCView: View {
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Text Styles") {
                    TextStyles()
                }
                
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle("Table of Contents")
            .navigationViewStyle(.automatic)
        }
    }
}

struct TOCView_Previews: PreviewProvider {
    static var previews: some View {
        TOCView()
    }
}
