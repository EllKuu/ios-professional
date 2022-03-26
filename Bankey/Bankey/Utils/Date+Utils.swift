//
//  Date+Utils.swift
//  Bankey
//
//  Created by elliott kung on 2022-03-26.
//

import Foundation

extension Date{
    static var bankeyDataFormatter: DateFormatter{
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone(abbreviation: "MDT")
        return formatter
    }
    
    var monthDayYearString: String{
        let dateFormatter = Date.bankeyDataFormatter
        dateFormatter.dateFormat = "MMM d, yyyy"
        return dateFormatter.string(from: self)
    }
}
