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
                
                if(sections.count >= 1) {
                    ForEach(sections) { section in
                        Section(section.id) {
                            items(section.items)
                        }
                    }
                    
                } else {
                    items(sections.first!.items)
                }
                
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle(title)
        }
    }
    
    func items(_ items: [TOCItem]) -> some View {
        ForEach(items) { item in
            NavigationLink {
                item.destination
            } label: {
                HStack(spacing: 20) {
                    if let icon = item.icon {
                        Image(systemName: icon )
                            .frame(maxWidth: 20)
                    }
                    Text(item.id)
                }
            }
        }
    }
    
}
