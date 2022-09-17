//
//  IconButton.swift
//  LearningSwift
//
//  Created by Rodney Aiglstorfer on 9/16/22.
//

import SwiftUI

struct IconButton: View {
    var systemName: String
    var action: () -> Void
    
    init(_ systemName: String, action: @escaping () -> Void) {
        self.systemName = systemName
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            Image(systemName: systemName)
                .foregroundColor(Color.theme.strokeColor)
        }
    }
}

struct IconButton_Previews: PreviewProvider {
    static var previews: some View {
        IconButton("pencil") {
            print("goo")
        }
    }
}
