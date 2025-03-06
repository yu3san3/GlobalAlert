# 🎉 GlobalAlert

GlobalAlert is a **simple** and **lightweight** Swift package for displaying alerts in SwiftUI.

## ✨ Features

- 🛠️ No need to manage `isShowAlert` state properties manually
- 🎨 No need to attach a modifier to views
- ⚡ Trigger alerts programmatically
- 🪟 Works with multiple windows on iPadOS

## 🚀 Quick Start

Just follow these two simple steps!

#### 1. Use `GlobalAlertContainer` as the root view
```swift
import GlobalAlert

struct YourApp: View {
    var body: some View {
        GlobalAlertContainer {
            ContentView()
        }
    }
}
```

#### 2. Show an alert using `GlobalAlert`
```swift
struct ContentView: View {
    @EnvironmentObject var globalAlert: GlobalAlert

    var body: some View {
        Button("Show Alert") {
            globalAlert.showAlert(
                "Success!",
                message: "The operation was completed!"
            )
        }
    }
}
```

<p align="center">
    <img src="https://github.com/user-attachments/assets/9f10694f-b638-4261-b79c-36d1deddbdd4" width="400"/>
</p>

## 📦 Installation

#### Using [Swift Package Manager](https://swift.org/package-manager/)

1. In Xcode, open your project and navigate to `Project` > `Package Dependencies`.
2. Then, enter the following URL:

```
https://github.com/yu3san3/GlobalAlert.git
```

## 🔍　More Features

### 🎛️ Customizing Alert Buttons

You can customize alerts by configuring buttons.

#### Two-Button Alert with Actions

```swift
globalAlert.showAlert(
    "Confirmation",
    message: "Proceed with this action?",
    buttons: [
        .init("Cancel", role: .cancel),
        .init("OK") {
            print("Action confirmed! 👍")
        }
    ]
)
```

<p align="center">
    <img src="https://github.com/user-attachments/assets/81f60c21-6e62-4999-84b4-1d25a9ff64c4" width="400"/>
</p>

#### Three-Button Alert

```swift
globalAlert.showAlert(
    "Delete Data?",
    message: "This action cannot be undone.",
    buttons: [
        .init(
            "Delete",
            role: .destructive
        ),
        .init(
            "View Details"
        ),
        .init(
            "Cancel",
            role: .cancel
        ),
    ]
)
```

<p align="center">
    <img src="https://github.com/user-attachments/assets/c2457622-a018-4ec8-b130-8218ed13bee5" width="400"/>
</p>

### 📢 Using confirmationDialog

You can also display a confirmation dialog:

```swift
globalAlert.showConfirmationDialog(
    "Overwrite File?",
    message: "A file with the same name exists. Overwrite?",
    buttons: [
        .init(
            "Overwrite",
            role: .destructive
        ),
        .init(
            "Save As"
        ),
        .init(
            "Cancel",
            role: .cancel
        ),
    ]
)
```

<p align="center">
    <img src="https://github.com/user-attachments/assets/eef6b586-7000-4349-ae8d-4b1a4081fbc9" width="400"/>
</p>
