//
//  ExpandableItem.swift
//  AAExpandableListView
//
//  Created by Arsalan Malik on 27/11/2024.
//


import SwiftUI

class ExpandableItem: Identifiable, ObservableObject {
    let id = UUID()
    let title: String
    @Published var isExpanded: Bool
    let subItems: [String]
    
    init(title: String, isExpanded: Bool = false, subItems: [String]) {
        self.title = title
        self.isExpanded = isExpanded
        self.subItems = subItems
    }
}
