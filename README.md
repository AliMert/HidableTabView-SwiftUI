# Hideable TabView

Hide TabView any where in the SwiftUI project.

```
    ThirdView()
        .hideTabBar() // animated parameter is set to true by default
```

```
    FourthView()
        .showTabBar() // animated parameter is set to true by default
```

```
    FirstView().onAppear {
        UITabBar.hideTabBar(animated: false)
    }
```

```
    SecondView().onAppear {
        UITabBar.hideTabBar(animated: false)
    }
```

```
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
     <th>
     <div align="center">
        <b>Demo</b>
</div>
</th>
  </tr>
  <tr>
     <td colspan="3"> ![Demo Link](screenshots/demo.mp4) </td>
  </tr>
</tbody>
</table>
