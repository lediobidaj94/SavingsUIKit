//
//  FontStylesSwiftUI.swift
//  FinanceAppPracticeSwift
//
//  Created by Ledio Bidaj on 27.2.25.
//
import SwiftUI

public struct FontStyle: ViewModifier {
    let size: CGFloat
    let color: Color?
    let weight: Font.Weight
    
    public func body(content: Content) -> some View {
         content
             .font(.system(size: size, weight: weight, design: .default))
             .foregroundColor(color)
     }
}
public struct FontStyles {

    public static let header = FontStyle(size: 16, color: nil, weight: .bold)
    public static let title = FontStyle(size: 14, color: nil, weight: .semibold)
    public static let subtitle = FontStyle(size: 14, color: .grayColor, weight: .regular)
    public static let body = FontStyle(size: 12, color: .grayColor, weight: .regular)
    public static let bodyBlue = FontStyle(size: 12, color: .blue, weight: .regular)
    public static let bodyGreen = FontStyle(size: 12, color: .green, weight: .regular)
    public static let bodyRed = FontStyle(size: 12, color: .red, weight: .regular)
    public static let dateEntry = FontStyle(size: 12, color: .white, weight: .bold)
    public static let calendarEntry = FontStyle(size: 10, color: .grayColor, weight: .regular)
    
}

public extension Text {
    func fontStyle(size: CGFloat, color: Color? = nil, weight: Font.Weight) -> some View {
        self.modifier(FontStyle(size: size, color: color, weight: weight))
    }
}
public extension View {
    func applyFontStyle(_ style: FontStyle) -> some View {
        self.modifier(style)
    }
}

public extension Text {
    init(localized key: String) {
        self.init(LocalizedStringKey(key))
    }
}
