# UIKit-SwiftUI-Architecture

**Ultimate IOS Architecture** 


This is the ultimate ios architecture that provides power of SwiftUI and UIKit combined.

But why ? 

- Because of SwiftUI's easy to develop interface and realtime update features.
- Rebuilding app is annoying as hell. This is the best till hot reload is possible.
- Easy change of SwiftUI views to UIKit UIViewController
- Lack of customizations on SwiftUI , for ex. TabBar, NavigationBar etc.

To Install 

Necessary packages to run:

- **Core**

Contains various interfaces,extensions,exceptions,constants etc. Which is project independent.

https://github.com/MehmetKaranlik/Core

- **DesignKit**

Contains project independted highly generic design related objects likes pre defined Text models,


````swift
      DesignKit.shared.setFonts(Fonts())
      DesignKit.shared.setDesignSizes(Sizes())
      DesignKit.shared.setColors(Colors())
````

**Warning** <br />
Although using not setted feature is prevented by asserting, please make sure you set related variables before using that related features.
Otherwise you may run into runtime crashes.

https://github.com/MehmetKaranlik/DesignKit

- **NetworkManagerPackage** (Optional)

Easy to use async / await  networking package that is generic by default.

https://github.com/MehmetKaranlik/NetworkManager



- **Project Structure** 


Root<br />
   - AppDelegate.swift (ProductInitilize called here to set configs of DesignKit)
   - SceneDelegate.swift
   - Product<br />
        - Init
            - ProductInitialize.swift (Initialization codes of app stored here and called with single static function)<br />
        - DesignKit
            - Fonts.swift ( Fonts that required by DesignKit package stored here )<br />
            - Colors.swift ( Colors that required by DesignKit package stored here )<br />
            - Sizes.swift (Sizes that required by DesignKit package stored here)<br />
          
        - Networking
            - ProductNetworkManager.swift (A handler for projects network request that uses networking package, containts base url & error model etc.)<br />
         
        - Model (Contains general models used in app)
            - Base<br />
               - BaseErrorModel.swift ( A Model that conforms codable required by networking package. If you get error from network call this model will be casted)<br />
         
   - Features (This is where screens and related folders are stored, this folder can branched more like auth & tab & sub-features)
        - Example (Example screen related directories)
            - View ( SwiftUI View or UIKit UIView that holds screens UI codes, does not contain business logic)<br />
                - ExampleView.swift ( ExampleView : View || ExampleView : UIView)<br />
            - ViewController<br />
                - ExampleViewController.swift ( UIKit UIViewController that coordinates view & delegates also such as Tab Customization & NavigationBar Customization)
                
                
                ```swift
                class ExampleViewController : UIViewController {
                     let homeView = HomeView() // SwiftUI View
   
                     override func viewDidLoad() {
                        super.viewDidLoad()
                        let hosted = homeView.toHostingController()
                        hosted.addToVC(target: self)
                        setNavigationTitle("Example",prefersLargeTitle: false)
                     }
               }


                ```
                
                toHostingController and addToVC extensions stored in core package <br />
            - ViewModel<br />
                - ExampleViewModel.swift<br /> (Which is class and conforms to ObservableObject protocol)
                
            - Model (Models that exclusive to that particular screen)<br />
                - ExampleModel.swift
                - ExampleAnotherModel.swift
            - Service(Contains networking logic and functions unrelated to business logic & ui logic)<br />
                - IExampleService(Protocol that is defines service functions and getter of INetworkManager)
                - ExampleService(Struct that conforms IExampleService)
            
         
            
      
      

