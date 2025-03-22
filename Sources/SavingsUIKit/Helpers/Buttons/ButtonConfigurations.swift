//
//  ButtonConfigurations.swift
//  FinanceAppPracticeSwift
//
//  Created by Ledio Bidaj on 24.2.25.
//
import UIKit

@MainActor
public struct CustomButtons {
    
    public static func makeSelectOptionButton(title: String, selected: Bool) -> UIButton {
        let button = UIButton()
        var configuration = UIButton.Configuration.plain()
        configuration.titleAlignment = .center
        configuration.background.strokeColor = !selected ? .blueColor.withAlphaComponent(0.3) :.blueColor
        configuration.background.cornerRadius = 10
        configuration.background.strokeWidth = !selected ? 1 : 4
        button.configuration = configuration
        button.titleLabel?.apply(AppTypography.body)
        button.setTitle(title, for: .normal)
        return button
    }
    
    public static func makePrimaryButton(title: String) -> UIButton {
        let button = UIButton()
        var configuration = UIButton.Configuration.plain()
        configuration.titleAlignment = .center
        configuration.background.cornerRadius = 10
        configuration.background.backgroundColor = .blueColor
    
        button.configuration = configuration
        button.titleLabel?.apply(AppTypography.body)
        button.setTitleColor(.white, for: .normal)
        button.setTitle(title, for: .normal)
        return button
    }
    
    public static func makeCirclePlusButton(diameter: CGFloat, frame: CGRect) -> UIButton {
        let button = UIButton(frame: frame)
        button.backgroundColor = .red
        button.layer.cornerRadius = 30
        button.setTitle("+", for: .normal)
        button.setTitleColor(.white, for: .normal)
        
        return button
    }
}
