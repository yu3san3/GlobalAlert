import SwiftUICore

public final class GlobalAlert: ObservableObject {
    @Published var isShowAlert = false
    @Published var isShowConfirmationDialog = false

    @Published var alertItem = GlobalAlertItem("(undefined)")

    public init() {}

    @MainActor
    public func showAlert(
        _ titleKey: LocalizedStringKey,
        message: LocalizedStringKey? = nil,
        buttons: [GlobalAlertButtonItem] = []
    ) {
        alertItem = .init(titleKey, message: message, buttons: buttons)
        isShowAlert = true
    }

    @MainActor
    public func showConfirmationDialog(
        _ titleKey: LocalizedStringKey,
        message: LocalizedStringKey? = nil,
        buttons: [GlobalAlertButtonItem] = []
    ) {
        alertItem = .init(titleKey, message: message, buttons: buttons)
        isShowConfirmationDialog = true
    }
}
