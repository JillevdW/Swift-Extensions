# FirstLaunch

FirstLaunch is an extension to UserDefaults to check if this is the first launch.

- [Features](#features)
- [Usage](#usage)
    - **Intro -** [How to use](#how-to-use)
    - **Functions -** [isFirstLaunch](#isfirstlaunch), [askForStoreReviewAfter](#askforstorereviewafter)

## Requirements
- iOS 10.3+
- Xcode 8.0+
- Swift 3.0+

## Installation

Simply download the FirstLaunch.swift file and put it in your project directory.

## Usage

### Intro

#### How to use

Call the FirstLaunch functions in your AppDelegate, in the application didFinishLaunchingWithOptions function. 

```swift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        //call functions here
    }
}
```

## Functions

### isFirstLaunch

The isFirstLaunch function is used to check if the current launch is the first launch. If it is, it will return a boolean value of true and store the current date in UserDefaults. If it isn't it will return false. 

```swift

UserDefaults().isFirstLaunch() {
    //do something when true
} else {
    //do something when false
}
```

### askForStoreReviewAfter

A feature I often need is to ask for a store review after a certain amount of days. The askForStoreReviewAfter function helps with that. It takes a parameter of an Int amount of days, and will ask for a store review if the app is launch after the amount of days have passed.

```swift

UserDefaults().isFirstLaunch()
UserDefaults().askForStoreReview(days: 7)
```

We still call the isFirstLaunch function before as a seperation of concerns, since we might also do other handling with the response.

## Features

<<<<<<< HEAD
- [x] Check if it's the first launch
- [x] Schedule a StoreKit Review after a certain amount of days
- [ ] Load a different ViewController for onboarding process
=======
- [checkbox:checked] Check if it's the first launch
- [checkbox:checked Schedule a StoreKit Review after a certain amount of days
- [checkbox:unchecked Load a different ViewController for onboarding process
>>>>>>> 1d68694... Mardown fixes 🙈


## Author

Jille van der Weerd

## License

Do with it whatever you please.
