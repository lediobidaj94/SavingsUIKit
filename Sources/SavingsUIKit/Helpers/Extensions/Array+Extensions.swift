//
//  Array+Extensions.swift
//  FinanceAppPracticeSwift
//
//  Created by Ledio Bidaj on 7.3.25.
//

public extension Array {
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
