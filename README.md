# Hideable TabView

Hide TabView any where in the SwiftUI project.

Go to section
* [Installation](#installation)  
* [Usage](#usage)  
* [Demo Link and Video](#demo-link-and-video)
<h2> Installation</h2>

<h4> Swift Package Manager <h4>

<p>
HideableTabView framework can be added to your project as a package thorught SPM. </br>
</p>

<p>
<ul>
    <li> https://gitlab.com/AliMertOzhayta/hidabletabview-swiftui.git </li>
</ul>
</p>
</br>

## Usage 

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

# Demo Link and Video

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
