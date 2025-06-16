# 💎 Gemify

**Gemify** is a lightweight SwiftUI package that provides scalable, stateless, and beautifully-rendered gem icons. Choose from **Ruby**, **Diamond**, **Sapphire**, or **Emerald** styles, with built-in support for dynamic scaling and stretching. Perfect for decorative UI elements, gamification, badges, or rewards systems.

---

## ✨ Features

* 🔹 Stateless and lightweight SwiftUI component
* 💠 Gem styles: `ruby`, `diamond`, `sapphire`, `emerald`
* 📏 Fully scalable via `scale` parameter
* 🧱 Stretchable and resizable with standard SwiftUI layout behavior
* 🎨 Color-themed vector rendering – no image assets needed

---

## 🛠 Installation

### Swift Package Manager

1. In Xcode, go to **File > Add Packages**
2. Paste the repository URL:

   ```
   https://github.com/samlupton/Gemify.git
   ```
3. Select the package and add it to your project.

---

## 💻 Usage

### Import the module

```swift
import Gemify
```

### Add a Gem to your View

```swift
Gem(gem: .ruby, scale: 2.0)
```

#### Parameters:

* `gem`: `.ruby`, `.diamond`, `.sapphire`, or `.emerald`
* `scale`: A `Double` that scales the gem's size (e.g., 1.0, 2.0, etc.)

### Example

```swift
VStack {
    Gem(gem: .emerald, scale: 1.0)
    Gem(gem: .sapphire, scale: 2.0)
    Gem(gem: .diamond, scale: 3.0)
    Gem(gem: .ruby, scale: 4.0)
}
.padding()
```

---

## 🔧 Customization

All gems use vector paths and are designed to scale and stretch within SwiftUI layouts. You can wrap them in any SwiftUI container or apply standard modifiers like `.frame`, `.padding`, `.background`, etc.

---

## 📄 License

This package is released under the MIT License.
