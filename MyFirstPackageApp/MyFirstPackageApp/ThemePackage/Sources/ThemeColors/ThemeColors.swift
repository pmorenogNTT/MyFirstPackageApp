// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public enum ThemeColors {
    public static let bundle: Bundle = .module
    public static let primaryColor = Color("primaryColor", bundle: ThemeColors.bundle)
    public static let secondaryColor = Color("secondaryColor", bundle: ThemeColors.bundle)
    public static let tertiaryColor = Color("tertiaryColor", bundle: ThemeColors.bundle)
}
