//
//  File.swift
//  Calendar
//
//  Created by addin on 28/01/21.
//

import Foundation

// MARK: - Calendar
struct Calendar: Codable {
    let items: [Event]
    
}

// MARK: - Event
struct Event: Identifiable, Codable {
    var id: String
    let summary: String
    let start, end: End

}

// MARK: - End
struct End: Codable {
    let date: String
    
    var formattedDate: String {
        
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = "yyyy-MM-dd"

        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "MM/dd/yyyy"

        if let date = dateFormatterGet.date(from: date) {
            return dateFormatterPrint.string(from: date)
        }
        
        return ""
    }
}

