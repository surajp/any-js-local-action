# Execute any JS in Screen Flows. Work around the limitations of flows using JS

Convert strings in flows to arrays/collections, concat, use map, reduce, filters, and more..!.

Use Invocable Actions to serialize record collections and deserialize them back after processing. So flows can now be as simple as `Get Records -> Serialize -> Process using JS -> Deserialize -> Update Records`. Avoid loops and make your flows more linear. A sample flow is included.

Example 1: JS Only (No Record interactions)

![](media/flow-anyaction-2.gif)

Example 2: Get Records -> Serialize -> Add Phone and Type using JS -> Deserialize -> Update Records

![](media/flow-anyaction-3.gif)
