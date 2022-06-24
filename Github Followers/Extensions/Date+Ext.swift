//
//  Date+Ext.swift
//  Github Followers
//
//  Created by Max Park on 6/18/22.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        return formatted(.dateTime.month().year())
    }
}
