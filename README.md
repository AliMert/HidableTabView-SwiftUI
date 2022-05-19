# Hideable TabView
</br>

Hide TabView any where in the SwiftUI project.

Go to section:
* [Installation](#installation)  
* [Usage](#usage)  
* [Demo](#demo)

</br>

## Installation

<h4> Swift Package Manager <h4>

<p>
HideableTabView framework can be added to your project as a package thorught SPM. </br>
</p>

<p>
<ul>
    <li> https://github.com/AliMert/HidableTabView-SwiftUI.git </li>
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
</br>

# Demo

https://user-images.githubusercontent.com/37440706/169291784-32f56800-e74a-48bb-9040-ce96aa8c4af8.mp4


