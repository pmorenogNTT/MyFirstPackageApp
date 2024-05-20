//
//  MyCardButtonStyle.swift
//
//
//  Created by Diego Rodriguez Casillas on 20/5/24.
//

import SwiftUI

public struct MyCardButtonStyle: ButtonStyle {
    // MARK: Properties
    @Environment(\.isEnabled) private var isEnabled: Bool
    
    // MARK: Constants
    private let backgroundColorActive: Color
    private let backgroundColorDisabled: Color
    private let roundedRectangleCornerRadius: CGFloat = 20
    private let shadowRadius: CGFloat = 10
    private let buttonOpacity: CGFloat = 0.8
    
    public init(
        backgroundColorActive: Color,
        backgroundColorDisabled: Color
    ) {
        self.backgroundColorActive = backgroundColorActive
        self.backgroundColorDisabled = backgroundColorDisabled
    }
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background {
                RoundedRectangle(cornerRadius: roundedRectangleCornerRadius)
                    .fill(backgroundColor(configuration: configuration))
                    .shadow(radius: shadowRadius)
            }
    }
    
    private func backgroundColor(configuration: Configuration) -> Color {
        if isEnabled {
            return configuration.isPressed ? backgroundColorActive.opacity(buttonOpacity) : backgroundColorActive
        } else {
            return backgroundColorDisabled
        }
    }
}
