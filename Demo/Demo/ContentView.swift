//
//  ContentView.swift
//  Demo
//
//  Created by 丹羽雄一朗 on 2025/03/07.
//

import GlobalAlert
import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var globalAlert: GlobalAlert

    var body: some View {
        VStack {
            Group {
                Button("Show simple alert") {
                    globalAlert.showAlert(
                        "Success!",
                        message: "The operation was completed!"
                    )
                }

                Button("Show alert with action") {
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
                }

                Button("Show three-button alert") {
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
                }

                Button("Show confirmation alert") {
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
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(GlobalAlert())
}
