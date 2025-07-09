# 💎🕒 Gemify

<p align="center">
  <img src="https://raw.githubusercontent.com/samlupton/Gemify/main/gem.png" alt="Gem screenshot" height="500"/>
  <img src="https://raw.githubusercontent.com/samlupton/Gemify/main/clock.png" alt="Clock screenshot" height="500"/>
</p>

**Gemify** is a lightweight SwiftUI package providing two scalable, stateless vector icon components:

- **Gems**: Beautifully-rendered, color-themed gems in multiple styles
- **Clock**: A fully scalable, layout-adaptive analog clock

Both components are built using SwiftUI shapes and paths—no image assets—allowing precise control over size, stretching, and layout responsiveness.

---

## ✨ Features

* 💠 Gem styles: `ruby`, `diamond`, `sapphire`, `emerald`
* 🕒 **New** Clock component: scalable analog clock
* 🔹 Stateless and lightweight SwiftUI views
* 📏 Scale via `scale`, `xScale`, and `yScale` parameters
* 🧱 Integrates natively with SwiftUI layout system
* 🎨 Fully vector-based rendering – no external assets

---

## 🛠 Installation

### Swift Package Manager

1. In Xcode, go to **File > Add Packages**
2. Use the repository URL:

   ```
   https://github.com/samlupton/Gemify.git
   ```
3. Select the package and add it to your target.

---

## 💻 Usage

### Import the module

```swift
import Gemify
```

---

### 📍 Gem Component

```swift
Gem(gem: .ruby, scale: 2.0)
```

#### Parameters

- `gem`: `.ruby`, `.diamond`, `.sapphire`, `.emerald`
- `scale`: Uniform scale
- `xScale`, `yScale`: Optional non-uniform scaling for stretching

#### Example

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

### ⏱ Clock Component

```swift
Clock(scale: 10.0)
```

#### Parameters

- `scale`: Base size multiplier

The clock scales cleanly at any size. It’s ideal for dashboards, widgets, or decorative interfaces.

---

## 🧩 Customization

Both components are built using native SwiftUI vector paths and are resolution-independent. Use standard SwiftUI modifiers like `.frame`, `.padding`, `.background`, `.foregroundColor`, etc. for full styling and layout control.

---

## 📄 License

Gemify is released under the MIT License.
