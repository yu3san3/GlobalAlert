import SwiftUI

public struct GlobalAlertButtonItem: Identifiable {
    public let id = UUID()
    let title: LocalizedStringKey
    let role: ButtonRole?
    let action: () -> Void

    public init(
        _ titleKey: LocalizedStringKey,
        role: ButtonRole? = nil,
        action: @escaping () -> Void = {}
    ) {
        title = titleKey
        self.role = role
        self.action = action
    }
}
