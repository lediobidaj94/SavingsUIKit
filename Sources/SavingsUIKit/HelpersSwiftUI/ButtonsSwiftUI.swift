//
//  ButtonsSwiftUI.swift
//  FinanceAppPracticeSwift
//
//  Created by Ledio Bidaj on 25.2.25.
//
import SwiftUI

public struct StepperButton: View {
    
    var image: String
    var action: () -> Void
    
    public init(image: String, action: @escaping () -> Void) {
          self.image = image
          self.action = action
      }
    
    public var body: some View {
        Button(action: action) {
            Image(systemName: image)
                .padding()
                .tint(Color.blue)
        }
    }
}
