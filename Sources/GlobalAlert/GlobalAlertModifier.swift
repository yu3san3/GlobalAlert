import SwiftUI

struct GlobalAlertModifier: ViewModifier {
    @ObservedObject private var alert: GlobalAlert

    init(alert: GlobalAlert) {
        self.alert = alert
    }

    func body(content: Content) -> some View {
        content
            .alert(
                alert.alertItem.title,
                isPresented: $alert.isShowAlert,
                presenting: alert.alertItem,
                actions: { item in
                    ForEach(item.buttons) { button in
                        Button(
                            button.title,
                            role: button.role,
                            action: button.action
                        )
                    }
                },
                message: { item in
                    if let message = item.message {
                        Text(message)
                    }
                }
            )
            .confirmationDialog(
                alert.alertItem.title,
                isPresented: $alert.isShowConfirmationDialog,
                presenting: alert.alertItem,
                actions: { item in
                    ForEach(item.buttons) { button in
                        Button(
                            button.title,
                            role: button.role,
                            action: button.action
                        )
                    }
                },
                message: { item in
                    if let message = item.message {
                        Text(message)
                    }
                }
            )
    }
}

extension View {
    func globalAlert(_ alert: GlobalAlert) -> some View {
        modifier(GlobalAlertModifier(alert: alert))
    }
}
