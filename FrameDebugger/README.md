# FrameDebugger

FrameDebugger is a tool to quickly aid in the visual debugging of frames. For example, when working with intersects but views are still intersecting, it is a possibility you didn't call setNeedsLayout and layoutIfNeeded. This tool adds transparent boxes at the location of the frame to see where the problem lies. Before, I debugged frames by constantly typing this:

```Swift

let rect1 = UIView(frame: view1.frame)
rect1.backgroundColor = .black
rect1.alpha = 0.5
self.view.addSubview(rect1)

//repeat for all views to debug
```
With this tool, we can greatly reduce the amount of effort it takes to debug view frames.

- [Usage](#usage)
    - **Intro -** [How to use](#how-to-use)
    - **Functions -** [debug](#debug), [debugSubviewsOf](#debugsubviewsof)
- [Features](#features)
- [Caution](#caution)

## Requirements
- iOS 10.3+
- Xcode 8.0+
- Swift 3.0+

## Installation

Simply download the FrameDebugger.swift file and put it in your project directory.

## Usage

### Intro

#### How to use

To use the functions this tool provides, simple create a FrameDebugger object or use the function directly.

```swift

let debugger = FrameDebugger()
FrameDebugger().//use function here
```

## Functions

### debug

The debug function takes a view and returns a view, dumbing down the creation of a single debug frame to a single line of code:

```swift

view.addSubview(FrameDebugger().debug(view: viewToDebug))
```

### debugSubviewsOf

The debugSubviewsOf function takes a view, and returns an array of views. This function is used to debug all subviews of the given view. I added an extension to UIView that allows us to add multiple subviews at once, also dumbing down the creation of a lot of debug frames down to a single line of code:

```swift

view.addSubviews(FrameDebugger().debugSubviewsOf(view: view))
```

## Features

- [x] Debug a single view frame
- [x] Debug all subviews of a view
- [x] Allow for adding multiple subviews at once
- [ ] Contact me if you have ideas, or make a pull request 👍

## Caution

This tool is not optimized for practical use in applications, merely for debugging purposes. While reloading views a lot I've encountered performance losses and slight hangs. When you can't get the view frames to display correctly, you might need to call the setNeedsLayout and layoutIfNeeded functions on the ones that have an improper frame.

## Author

Jille van der Weerd

## License

Do with it whatever you please.
