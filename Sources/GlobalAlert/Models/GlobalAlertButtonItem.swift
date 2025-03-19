import SwiftUI

public struct GlobalAlertButtonItem: Identifiable {
    public let id = UUID()
    let title: LocalizedStringKey
    let role: ButtonRole?
    let action: () -> Void

    public init(
        _ titleKey: LocalizedStringKey,
        role: ButtonRole?,
        action: @escaping () -> Void
    ) {
        title = titleKey
        self.role = role
        self.action = action
    }
}

extension GlobalAlertButtonItem {
    public init(
        _ titleKey: LocalizedStringKey,
        role: ButtonRole?
    ) {
        self.init(titleKey, role: role, action: {})
    }

    public init(
        _ titleKey: LocalizedStringKey,
        action: @escaping () -> Void
    ) {
        self.init(titleKey, role: nil, action: action)
    }

    public init(
        _ titleKey: LocalizedStringKey
    ) {
        self.init(titleKey, role: nil, action: {})
    }
}
