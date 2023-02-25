# UIKit-SwiftUI-Architecture

** Ultimate IOS Architecture ** 


This is the ultimate ios architecture that provides power of SwiftUI and UIKit combined.

But why ? 

- Because of SwiftUI's easy to develop interface and realtime update features.
- Rebuilding app is annoying as hell. This is the best till hot reload is possible.
- Easy change of SwiftUI views to UIKit ViewController
- Lack of customizations on SwiftUI , for ex. TabBar, NavigationBar etc.

To Install 

Necessary packages to run:

- **Core**

Contains various interfaces,extensions,exceptions,constants etc. Which is project independent.

https://github.com/MehmetKaranlik/Core

- **DesignKit**

Contains project independted highly generic design related objects likes pre defined Text models,


```swift
      DesignKit.shared.setFonts(Fonts())
      DesignKit.shared.setDesignSizes(Sizes())
      DesignKit.shared.setColors(Colors())
```

- **Warning** 
Although using not setted feature is prevented by asserting, please make sure you set related variables before using that related features.
Otherwise you may run into runtime crashes.

https://github.com/MehmetKaranlik/DesignKit

- **NetworkManagerPackage** (Optional)

Easy to use async / await  networking package that is generic by default.



- ** Project Structure ** 



