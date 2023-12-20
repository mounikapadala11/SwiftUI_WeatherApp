# My First SwiftUI Page

## Key Takeaways

- **Extracting Sub-Views**
  - Sub-views can be extracted for reusability and better organization of the SwiftUI code.

- **ZStack Limitation**
  - The main `ZStack` in SwiftUI can hold a maximum of 11 elements, including stacks, spacers, and other UI elements.

- **Reusable Components**
  - Elements commonly used across different pages can be saved in separate files for better modularity and reuse in the SwiftUI project.

- **Importance of Modifier Order**:
  - Adding a modifier in SwiftUI wraps the view in a new view. The order of these modifiers is crucial as it affects the final view hierarchy and layout.

- **Efficiency of View Structs**:
  - SwiftUI's `View` structs are extremely lightweight and efficient. 
  - They are designed to be created, destroyed, and re-rendered frequently, contributing to SwiftUI's high performance.

- **View Tree Comparison**:
  - SwiftUI optimizes rendering by comparing view trees.
  - It updates only the views that have changed, rather than re-rendering the entire UI.

- **Data-Driven Updates**:
  - When a data state (like a Boolean flag) changes, SwiftUI traverses the view tree to identify affected views.
  - Only the views impacted by the data change will trigger their `body` property to re-render with the new data.

- **Selective Rendering**:
  - Despite the frequent creation and destruction of view structs, the body of a view is not re-rendered unless there is a change in the data it depends on.
  - This selective rendering enhances performance and resource efficiency.

- **Consistent View Trees**:
  - SwiftUI requires declaring all UI possibilities upfront.
  - When data changes, SwiftUI navigates the existing view tree to determine which views are affected and re-renders only those specific views.

<img src="/screen.png" width="250" height="500">



- **Notes:**
When we add a modifier, we're wrapping that in a new view and you know as many times as needed and that the order of the modifiers is important.
UI The View structs are super lightweight and  performant like I said they get created and   destroyed and re-rendered all the time in Swift UI  and the reason that's possible is because they are super lightweight strucks.
wift UI compares the view  trees and then only updates the views that are necessary.
when we flip our is night from True to false or false to True vice versa when that Boolean changes  with UI goes through the view tree to see what changed and then when it gets to a view where that  data affects it it triggers the body property of   the view remember every view has that body and it  will re-render and re-update that based on the new data.
even if all the structs and the views are getting destroyed and  recreated the body's not firing off unless there's a difference.
The View trees have to be the same that's why we have to declare  all the possibilities up front in our UI and then   when the data change Swift UI will go down that  view tree look to see what views are affected by that change and then re-render just those  views.
