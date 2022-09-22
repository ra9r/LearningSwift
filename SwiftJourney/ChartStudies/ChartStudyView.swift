//
//  ChartStudyView.swift
//  SwiftJourney
//
//  Created by Rodney Aiglstorfer on 9/19/22.
//

import SwiftUI
import Charts

var data = [
    (weight: 127.8, date: "09/01/2022"),
    (weight: 126.4, date: "09/02/2022"),
    (weight: 126.6, date: "09/03/2022"),
    (weight: 125.7, date: "09/04/2022"),
    (weight: 124.8, date: "09/05/2022"),
    (weight: 125.5, date: "09/06/2022"),
    (weight: 126.8, date: "09/07/2022")
]

struct ChartStudyView: View {
    var body: some View {
//        ScrollView {
            VStack {
                Chart(data, id: \.weight) { rec in
                    LineMark(
                        x: .value("Date", makeDate(rec.date), unit: .calendar),
                        y: .value("Weight", rec.weight)
                        
                    )
                }
            }
//        }
    }
}

struct ChartStudyView_Previews: PreviewProvider {
    static var previews: some View {
        ChartStudyView()
    }
}

func makeDate(_ sDate: String) -> Date {
    let formatter = DateFormatter()
    formatter.dateFormat = "MM/DD/YYYY"
    if let date = formatter.date(from: sDate) {
        return date
    }
    
    return Date()
}
