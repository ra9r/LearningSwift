//
//  TOCViewModel.swift
//  LearningSwift
//
//  Created by Rodney Aiglstorfer on 9/16/22.
//

import SwiftUI


class TOCSection : Identifiable {
    var id: String
    var items: [TOCItem] = []
    
    init(_ label: String) {
        self.id = label
    }
    
    @discardableResult func addItem(_ label: String, icon: String? = nil, @ViewBuilder destination: @escaping () -> some View) -> TOCSection {
        items.append(TOCItem(label, icon: icon, destination: destination))
        return self
    }
}

struct TOCItem : Identifiable {
    
    let id: String
    let icon: String?
    let destination: AnyView
    
    init(_ label: String, icon: String?, @ViewBuilder destination: @escaping () -> some View) {
        self.id = label
        self.icon = icon
        self.destination = AnyView(destination())
    }
    
}

struct TOCView: View {
    var title: String
    @Binding var sections: [TOCSection]
  
    var body: some View {
        NavigationStack {
            List {
                ForEach(sections) { section in
                    Section(section.id) {
                        ForEach(section.items) { item in
                            NavigationLink {
                                item.destination
                            } label: {
                                HStack(spacing: 20) {
                                    if let icon = item.icon {
                                        Image(systemName: icon )
                                    }
                                    Text(item.id)
                                }
                            }
                        }
                    }
                }
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle(title)
        }
    }
    
}
