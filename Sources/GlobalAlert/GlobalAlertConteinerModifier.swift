import SwiftUI

struct GlobalAlertConteinerModifier: ViewModifier {
    @StateObject var alert = GlobalAlert()

    func body(content: Content) -> some View {
        content
            .environmentObject(alert)
            .globalAlert(alert)
    }
}

extension View {
    public func globalAlertContainer() -> some View {
        modifier(GlobalAlertConteinerModifier())
    }
}
