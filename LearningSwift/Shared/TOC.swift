//
//  TOCViewModel.swift
//  LearningSwift
//
//  Created by Rodney Aiglstorfer on 9/16/22.
//

import SwiftUI


/// A section of a table of contents.  `TOCSection`'s are typically used as arrays of `[TOCSection]`
public class TOCSection : Identifiable {
    public var id: String
    public var items: [TOCItem] = []
    
    public init(_ label: String) {
        self.id = label
    }
    
    /// Modifier that will add an item to the section
    /// - Parameters:
    ///   - label: The main text that is displayed in the item
    ///   - icon: Optional icon that can appear to the left of the text
    ///   - destination: The view to be displayed when the list item is clicked
    /// - Returns: TOCSection to allow for easy chaining of sequential calls to addItem
    @discardableResult public func addItem(_ label: String, icon: String? = nil, @ViewBuilder destination: @escaping () -> some View) -> TOCSection {
        items.append(TOCItem(label, icon: icon, destination: destination))
        return self
    }
}

public struct TOCItem : Identifiable {
    
    public let id: String
    public let icon: String?
    public let destination: AnyView
    
    init(_ label: String, icon: String?, @ViewBuilder destination: @escaping () -> some View) {
        self.id = label
        self.icon = icon
        self.destination = AnyView(destination())
    }
    
}

public struct TOCView: View {
    public var title: String
    @Binding public var sections: [TOCSection]
    
    public var body: some View {
        
        List(sections) { section in
            
            if(sections.count >= 1) {
                Section(section.id) {
                    items(section.items)
                }
            } else {
                items(section.items)
            }
            
        }
        .navigationBarTitleDisplayMode(.large)
        .navigationTitle(title)
   
        
    }
    
    private func items(_ items: [TOCItem]) -> some View {
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
