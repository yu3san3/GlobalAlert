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
        ContentView()
            .globalAlertContainer()
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
    <img width="400" alt="Alert with a button" src="https://github.com/user-attachments/assets/358e1246-ad01-43ad-bc8c-772041f11490" />
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
    <img width="400" alt="Alert with two buttons" src="https://github.com/user-attachments/assets/929724fa-8909-4656-a626-5269235b204b" />
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
    <img width="400" alt="Alert with three buttons" src="https://github.com/user-attachments/assets/25a0cf00-9fc7-4af6-85fb-6461d4bcab2b" />
</p>

### 📢 Using confirmationDialog (Deprecated in iOS 26)

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
    <img width="400" alt="Confirmation Dialog" src="https://github.com/user-attachments/assets/73373cb8-0f03-401a-b50c-2cbca69efec8" />
</p>
