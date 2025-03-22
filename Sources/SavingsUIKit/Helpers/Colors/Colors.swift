//
//  Colors.swift
//  FinanceAppPracticeSwift
//
//  Created by Ledio Bidaj on 24.2.25.
//
import UIKit

public extension UIColor {
    
    static let customBackground = UIColor { traitCollection in
        return traitCollection.userInterfaceStyle == .dark ? .black : .white
    }
    
    static let customText = UIColor { traitCollection in
        return traitCollection.userInterfaceStyle == .dark ? .white : .black
    }
    
    static let systemBackgroundColor = UIColor { _ in
        return.systemBackground
    }
    
    static let redColor = UIColor { _ in
        return .systemRed
    }
    
    static let greenColor = UIColor { _ in
        return .systemGreen
    }
    
    static let blueColor = UIColor { _ in
        return .systemBlue
    }
    
    static let grayColor = UIColor { traitCollection in
        return traitCollection.userInterfaceStyle == .dark ? .lightGray : .darkGray
    }
}
