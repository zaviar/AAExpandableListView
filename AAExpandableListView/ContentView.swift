//
//  ContentView.swift
//  AAExpandableListView
//
//  Created by Arsalan Malik on 27/11/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var items: [ExpandableItem] = [
          ExpandableItem(title: "Fruits", subItems: ["Apple", "Banana", "Cherry"]),
          ExpandableItem(title: "Vegetables",isExpanded: true, subItems: ["Carrot", "Potato", "Spinach"]),
          ExpandableItem(title: "Dairy", subItems: ["Milk", "Cheese", "Butter"])
      ]
    var body: some View {
        NavigationView {
                    ExpandableListView(items: $items)
                        .navigationTitle("Expandable List")
                }
    }
}

#Preview {
    ContentView()
}
