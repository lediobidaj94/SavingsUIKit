//
//  ColorsSwiftUI.swift
//  FinanceAppPracticeSwift
//
//  Created by Ledio Bidaj on 27.2.25.
//
import SwiftUI

public extension Color {
    static let customBackground = Color(UIColor { traitCollection in
        return traitCollection.userInterfaceStyle == .dark ? .black : .white
    })
    
    static let customText = Color(UIColor { traitCollection in
        return traitCollection.userInterfaceStyle == .dark ? .white : .black
    })
    
    static let systemBackgroundColor = Color(UIColor { _ in
        return .systemBackground
    })
    
    static let redColor = Color(UIColor { _ in
        return .systemRed
    })
    
    static let greenColor = Color(UIColor { _ in
        return .systemGreen
    })
    
    static let blueColor = Color(UIColor { _ in
        return .systemBlue
    })
    
    static let grayColor = Color(UIColor { traitCollection in
        return traitCollection.userInterfaceStyle == .dark ? .lightGray : .darkGray
    })
    
}
