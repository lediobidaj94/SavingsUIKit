//
//  UIHelpers.swift
//  FinanceAppPracticeSwift
//
//  Created by Ledio Bidaj on 7.3.25.
//
import UIKit

extension UIView {
    func setConstraints(_ constraints: (UIView) -> [NSLayoutConstraint]) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(constraints(self))
    }
}

@MainActor
public class LayoutHelper {
    
    public static func disableTranslatesAutoresizingMaskIntoConstraints(views: [UIView]) {
        views.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
    }
}
