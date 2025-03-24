//
//  DateFormatters.swift
//  FinanceAppPracticeSwift
//
//  Created by Ledio Bidaj on 18.2.25.
//
//import Foundation
//
//public enum DateFormatterType: String {
//    case fullDateFormat = "yyyy-MM-dd"
//    case monthYearFormat = "MMM yyyy"
//    case monthDateFormat = "MMM-dd"
//    case monthNumberFormat = "MM"
//    case monthOnlyFormat = "MMM"
//    case yearOnlyFromat = "yyyy"
//}
//
//struct DateFormatterWrapper {
//    
//    private let formatter: DateFormatter
//    
//    init(format: String) {
//        self.formatter = DateFormatter()
//        self.formatter.timeZone = TimeZone(identifier: "UTC")
//        self.formatter.locale = Locale(identifier: "en_US_POSIX")
//        self.formatter.dateFormat = format
//    }
//    
//    func convertToString(_ date: Date) -> String {
//        formatter.string(from: date)
//    }
//    
//    func convertToDate(_ string: String) -> Date? {
//        formatter.date(from: string)
//    }
//    
//    func month(from date: Date) -> String {
//        return formatter.string(from: date)
//    }
//}
//
//
//
//public extension Date {
//    
//    
//    func date(_ format: DateFormatterType) -> String {
//        return DateFormatterWrapper(format: format.rawValue).convertToString(self)
//    }
//
//    var day: Int {
//        var calendar = Calendar.current
//        calendar.timeZone = TimeZone(identifier: "UTC") ?? .current
//        return calendar.component(.day, from: self)
//    }
//   
//    var yearInt: Int {
//        let year = DateFormatterWrapper(format: "yyyy").month(from: self)
//        return Int(year) ?? 0
//    }
//    
//    var monthInt: Int {
//        let month = DateFormatterWrapper(format: "MM").month(from: self)
//        return Int(month) ?? 0
//    }
//    
//    var monthString: String {
//        let month = DateFormatterWrapper(format: "MMM").month(from: self)
//        return month ?? ""
//    }
//    
//    var titleDate: String {
//        let month = DateFormatterWrapper(format: "MMM yyyy").month(from: self)
//        return month
//    }
//}
//
//public extension String {
//    var date: Date? {
//        return DateFormatterWrapper(format: DateFormatterType.fullDateFormat.rawValue).convertToDate(self)
//    }
//    
//}
//
//public extension Int {
//    var stringValue: String {
//        return String(self)
//    }
//}
//
//public extension Double {
//    var stringValue: String {
//        return String(self)
//    }
//}
