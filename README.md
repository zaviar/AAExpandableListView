# Expandable List/Accordion View in SwiftUI

This project demonstrates a fully customizable **Expandable List (Accordion View)** in SwiftUI. The implementation features expandable and collapsible sections with smooth animations, making it an ideal component for iOS apps.

---

## Features

- 📂 **Expandable Sections**  
  Tap a section to expand or collapse its contents dynamically.

- 🎨 **Smooth Animations**  
  Enjoy seamless animations with `SwiftUI`.

- 🔄 **Dynamic Data Binding**  
  Easily pass and update data using bindings from the parent view.

- 🛠 **Reusable Component**  
  Plug-and-play expandable list for any SwiftUI project.

---

## Requirements

- **iOS 15.0+**
- **Xcode 14+**
- **SwiftUI**

---

## How to Use

1. Clone the repository:  
   ```bash
   git clone https://github.com/zaviar/AAExpandableListView.git
   cd ExpandableListView
2.	Open ExpandableListView.xcodeproj in Xcode.
3.	Use the ExpandableListView in your SwiftUI project:

    ```bash
    struct ContentView: View {
        @State private var items: [ExpandableItem] = [
            ExpandableItem(title: "Fruits", subItems: ["Apple", "Banana", "Cherry"]),
            ExpandableItem(title: "Vegetables", subItems: ["Carrot", "Potato", "Spinach"]),
            ExpandableItem(title: "Dairy", subItems: ["Milk", "Cheese", "Butter"])
        ]
        
        var body: some View {
            NavigationView {
                ExpandableListView(items: $items)
                    .navigationTitle("Expandable List")
            }
        }
    }

---

