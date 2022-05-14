# Hideable TabView

Hide TabView any where in the SwiftUI project.

 ```swift
    ThirdView()
        .hideTabBar() // animated parameter is set to true by default
 ```

```swift
    FourthView()
        .showTabBar() // animated parameter is set to true by default
```

```swift
    FirstView().onAppear {
        UITabBar.hideTabBar(animated: false)
    }
```

```swift
    SecondView().onAppear {
        UITabBar.showTabBar(animated: false)
    }
```

```swift
     Button {
         UITabBar.toogleTabBarVisibility()
   } label: {
       Text("Hide/Show Tab Bar")
  }
```

<table>
<thead>
   <tr>
      <th><div align="center">Demo</div></th>
  </tr>
</thead>
<tbody>
  <tr>
     <td> ![Demo Link](screenshots/demo.mp4) </td>
  </tr>
</tbody>
</table>
