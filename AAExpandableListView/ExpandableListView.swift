//
//  ExpandableListView.swift
//  AAExpandableListView
//
//  Created by Arsalan Malik on 27/11/2024.
//

import SwiftUI
struct ExpandableListView: View {
    @Binding var items: [ExpandableItem] // Data passed as a binding

    
    var body: some View {
        List {
            ForEach(items) { item in
                ExpandableRow(item: item)
                    .padding(.bottom, 8.0)
            }
        }
        .listStyle(InsetGroupedListStyle())
    }
}

struct ExpandableRow: View {
    @ObservedObject var item: ExpandableItem
    
    var body: some View {
        VStack(alignment: .leading) {
            // Main Row
            HStack {
                Text(item.title)
                    .font(.headline)
                Spacer()
                Image(systemName: item.isExpanded ? "chevron.up" : "chevron.down")
                    .foregroundColor(.gray)
            }
            .padding()
            .onTapGesture {
//                withAnimation {
//                    item.isExpanded.toggle()
//                }
            }
            .highPriorityGesture(
                TapGesture().onEnded {_ in
                    withAnimation {
                        item.isExpanded.toggle()
                    }
                }
            )
            // Sub Items
            if item.isExpanded {
                ForEach(item.subItems, id: \.self) { subItem in
                    Text(subItem)
                        .padding(.leading, 20)
                        .padding(.vertical, 5)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
        }
        .animation(.easeInOut, value: item.isExpanded) // Ensure smooth animation
    }
}

