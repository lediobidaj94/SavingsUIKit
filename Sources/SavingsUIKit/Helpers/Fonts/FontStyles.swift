//
//  FontStyles.swift
//  FinanceAppPracticeSwift
//
//  Created by Ledio Bidaj on 24.2.25.
//
import UIKit

public struct AppTypography {
    
    public struct Style : Sendable {
        let font: UIFont
        let color: UIColor?
        
        @MainActor
        func apply(to label: UILabel) {
            label.font = font
            label.textColor = color
        }
        
        @MainActor
        func attributedText(for text: String) -> NSAttributedString {
            NSAttributedString(string: text, attributes: [
                .font: font,
                .foregroundColor: color as Any
            ])
        }
        
        @MainActor
        public func withColor(_ newColor: UIColor) -> Style {
            Style(font: font, color: newColor)
        }
    }
    
    
    public static let header = Style(font: UIFont.systemFont(ofSize: 16, weight: .bold), color: nil)
    public static let title = Style(font: UIFont.systemFont(ofSize: 14, weight: .semibold), color: nil)
    public static let subtitle = Style(font: UIFont.systemFont(ofSize: 14, weight: .regular), color: .grayColor)
    public static let body = Style(font: UIFont.systemFont(ofSize: 12, weight: .regular), color: .grayColor)
    public static let dateEntry = Style(font: UIFont.systemFont(ofSize: 12, weight: .bold), color: .white)
    public static let calendarEntry = Style(font: UIFont.systemFont(ofSize: 10, weight: .regular), color: .grayColor)
    public static let redHeader = Style(font: UIFont.systemFont(ofSize: 16, weight: .bold), color: .red)
    
}

public extension UILabel {
    func apply(_ style: AppTypography.Style) {
        font = style.font
        textColor = style.color
    }
}

public extension UITextField {
    func apply(_ style: AppTypography.Style) {
        font = style.font
        if let color = style.color {
            textColor = color
        }
    }
}

public extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}
