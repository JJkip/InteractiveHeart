
# Interactive Heart

Implementation of an interactive heart using SwiftUI. The heart shape is created using the "heart.fill" system image. The color of the heart can be toggled between yellow and red by tapping on it, and its size can be changed by long-pressing on it.

Here's a breakdown of the code:

The code you provided is an implementation of an interactive heart using SwiftUI. The heart shape is created using the "heart.fill" system image. The color of the heart can be toggled between yellow and red by tapping on it, and its size can be changed by long-pressing on it.

Here's a breakdown of the code:

```swift
struct ContentView: View {
    @State private var colorChange = false
    @State private var sizeChange = false
    @State private var animationAmount = 1.0
    
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 100))
            .foregroundColor(colorChange ? .yellow : .red)
            .overlay(
                Image(systemName: "heart.fill")
                    .font(.system(size: 100))
                    .foregroundColor(.red)
                    .scaleEffect(animationAmount)
                    .opacity(2 - animationAmount)
                    .animation(
                        .easeInOut(duration: 1)
                        .repeatForever(autoreverses: false),
                        value: animationAmount)
            )
            .scaleEffect(sizeChange ? 1.5 : 1)
            .animation(
                .easeInOut(duration: 1)
                .repeatForever(autoreverses: true),
                value: animationAmount)
            .onAppear {
                animationAmount = 2
            }
            .onTapGesture {
                self.colorChange.toggle()
            }
            .onLongPressGesture {
                self.sizeChange.toggle()
            }
    }
}
```

The `ContentView` struct represents the main view of the application. It contains three state variables: `colorChange`, `sizeChange`, and `animationAmount`. These variables are used to control the color, size, and animation of the heart, respectively.

The body of the `ContentView` is a `ViewBuilder` closure that returns the SwiftUI view hierarchy. Here's a breakdown of the view hierarchy:

1. The heart image is created using the `Image(systemName:)` initializer with the "heart.fill" system image. It is then styled with a font size of 100 and the foreground color is set to either yellow or red based on the `colorChange` state variable.

2. The heart image is overlaid with another heart image using the `overlay` modifier. This overlaid heart image is also styled with a font size of 100 and the foreground color is set to red. It is scaled and animated based on the `animationAmount` state variable. The `scaleEffect` modifier scales the image, while the `opacity` modifier controls its transparency. The animation is defined using the `animation` modifier, specifying the duration, easing function, and repeat behavior.

3. The heart image is scaled based on the `sizeChange` state variable. When `sizeChange` is true, the heart is scaled by a factor of 1.5; otherwise, it remains at its original size of 1. The animation is applied using the `animation` modifier, specifying the duration, easing function, and repeat behavior.

4. The `onAppear` modifier is used to set the initial value of `animationAmount` to 2 when the view appears.

5. The `onTapGesture` modifier toggles the `colorChange` state variable when the heart is tapped.

6. The `onLongPressGesture` modifier toggles the `sizeChange` state variable when the heart is long-pressed.

The `ContentView` struct is previewed in the `ContentView_Previews` struct, which provides a preview for the SwiftUI canvas.

You can copy and paste this code into a new SwiftUI project to see the interactive heart in action.


## Tech Stack

**iOS:** Swift UI




## Screenshots

![InteractiveHeart](https://github.com/JJkip/InteractiveHeart/assets/2306651/27923ad5-db32-4ee7-b1df-f67a2274b351)


## Badges



[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
[![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](https://opensource.org/licenses/)
[![AGPL License](https://img.shields.io/badge/license-AGPL-blue.svg)](http://www.gnu.org/licenses/agpl-3.0)

