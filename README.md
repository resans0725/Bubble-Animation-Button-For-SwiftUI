# BubbleAnimationButton

BubbleAnimationButton is a SwiftUI package that provides an animated button, which expands to reveal multiple options in a bubble-like animation. It's highly customizable and easy to integrate into your iOS app.

## 📦 Installation

### Using Swift Package Manager (SPM)
1. Open your Xcode project.
2. Go to **File** > **Add Packages...**.
3. Enter the repository URL: `https://github.com/resans0725/Bubble-Animation-Button-For-SwiftUI`
4. Select **Add Package**.
5. Import the module in your Swift file:

```swift
import BubbleAnimationButton
```

## 🚀 Usage

### Basic Example

```swift
import SwiftUI
import BubbleAnimationButton

struct ContentView: View {
    var body: some View {
        BubbleAnimationButton(
            options: [
                BubbleOption(icon: "star.fill", color: .yellow),
                BubbleOption(icon: "heart.fill", color: .red),
                BubbleOption(icon: "message.fill", color: .blue),
                BubbleOption(icon: "bell.fill", color: .orange)
            ],
            mainButtonColor: .purple,
            optionSize: 50,
            spacing: 10,
            animation: .spring(),
            action: { index in
                print("Button \(index) tapped!")
            }
        )
        .padding(.top, 50)
    }
}
```

## 🎨 Customization

You can customize the button’s appearance using the following parameters:

- `options`: An array of `BubbleOption` items, each containing an icon name and a color.
- `mainButtonColor`: The color of the main button.
- `optionSize`: The size of each option button.
- `spacing`: The spacing between the option buttons.
- `animation`: The animation type for expanding the options.
- `action`: A closure that executes when an option is selected.

## 📜 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

Enjoy using **BubbleAnimationButton**! 🚀

