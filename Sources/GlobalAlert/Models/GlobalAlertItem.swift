import SwiftUICore

struct GlobalAlertItem {
    let title: LocalizedStringKey
    let message: LocalizedStringKey?
    let buttons: [GlobalAlertButtonItem]

    init(
        _ titleKey: LocalizedStringKey,
        message: LocalizedStringKey? = nil,
        buttons: [GlobalAlertButtonItem] = []
    ) {
        title = titleKey
        self.message = message
        self.buttons = buttons
    }
}
