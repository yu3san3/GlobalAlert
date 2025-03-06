import SwiftUI

public struct GlobalAlertConteiner<Content: View>: View {
    @StateObject var alert = GlobalAlert()

    let content: Content

    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    public var body: some View {
        content
            .environmentObject(alert)
            .globalAlert(alert)
    }
}
