//
//  Constants.swift
//  FinanceAppPracticeSwift
//
//  Created by Ledio Bidaj on 14.3.25.
//
import Foundation

public struct AppConstants {
    public static let calendar = {
        var calendar = Calendar.current
        calendar.timeZone = TimeZone(identifier: "UTC") ?? .current
        return calendar
    }()
}
