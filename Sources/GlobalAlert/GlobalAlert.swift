import SwiftUICore

public final class GlobalAlert: ObservableObject {
    @Published var isShowAlert = false
    @Published var isShowConfirmationDialog = false

    @Published var alertItem = GlobalAlertItem("(undefined)")

    public init() {}

    @MainActor
    public func showAlert(
        _ titleKey: LocalizedStringKey,
        message: LocalizedStringKey?,
        buttons: [GlobalAlertButtonItem]
    ) {
        alertItem = .init(titleKey, message: message, buttons: buttons)
        isShowAlert = true
    }

    @MainActor
    public func showConfirmationDialog(
        _ titleKey: LocalizedStringKey,
        message: LocalizedStringKey?,
        buttons: [GlobalAlertButtonItem]
    ) {
        alertItem = .init(titleKey, message: message, buttons: buttons)
        isShowConfirmationDialog = true
    }
}

extension GlobalAlert {
    @MainActor
    public func showAlert(
        _ titleKey: LocalizedStringKey,
        message: LocalizedStringKey?
    ) {
        showAlert(titleKey, message: message, buttons: [])
    }

    @MainActor
    public func showAlert(
        _ titleKey: LocalizedStringKey,
        buttons: [GlobalAlertButtonItem]
    ) {
        showAlert(titleKey, message: nil, buttons: buttons)
    }

    @MainActor
    public func showAlert(
        _ titleKey: LocalizedStringKey
    ) {
        showAlert(titleKey, message: nil, buttons: [])
    }

    @MainActor
    public func showConfirmationDialog(
        _ titleKey: LocalizedStringKey,
        buttons: [GlobalAlertButtonItem]
    ) {
        showConfirmationDialog(titleKey, message: nil, buttons: buttons)
    }
}
