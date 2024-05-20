// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public struct MyCardButton: View {
    // MARK: Properties
    private let title: String
    private let description: String
    private let icon: Image
    private let foregroundColor: Color
    private let backgroundColor: Color
    private let action: () -> Void
    
    // MARK: Constants
    private let textViewSpacing: CGFloat = 8
    private let iconWidth: CGFloat = 46
    private let iconHeight: CGFloat = 46

    public init(
        title: String,
        description: String,
        icon: Image,
        foregroundColor: Color,
        backgroundColor: Color,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.description = description
        self.icon = icon
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
        self.action = action
    }
    
    public var body: some View {
        buttonView
    }
    
    private var buttonView: some View {
        Button {
            action()
        } label: {
            content
                .padding()
        }
        .buttonStyle(
            MyCardButtonStyle(
                backgroundColorActive: backgroundColor,
                backgroundColorDisabled: .gray
            )
        )
    }
    
    private var content: some View {
        HStack {
            textView
                .padding()
            
            Spacer()
            
            iconView
        }
    }
    
    private var textView: some View {
        VStack(alignment: .leading, spacing: textViewSpacing) {
            Text(title)
                .font(.title)
            
            Text(description)
                .font(.body)
        }
        .foregroundStyle(foregroundColor)
    }
    
    private var iconView: some View {
        icon
            .resizable()
            .scaledToFit()
            .frame(width: iconWidth, height: iconHeight)
            .foregroundStyle(foregroundColor)
    }
}

#Preview {
    MyCardButton(
        title: "title",
        description: "description",
        icon: Image(systemName: "person"),
        foregroundColor: .white,
        backgroundColor: .blue
    ) {
        // Action
    }
}
