//
//  DecimalUtil.swift
//  Bankey
//
//  Created by elliott kung on 2022-03-10.
//

import Foundation

extension Decimal{
    var doubleValue: Double{
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
