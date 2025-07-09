//
//  SwiftUIView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/30/25.
//

import SwiftUI

struct SwiftUIView: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
//        DatePicker("Select a date", selection: $selectedDate)
//            .accentColor(Color.red)
////            .datePickerStyle(CompactDatePickerStyle())
////            .datePickerStyle(GraphicalDatePickerStyle())
//            .datePickerStyle(WheelDatePickerStyle())
        
//        DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
        
        VStack {
            Text("Selected Date: ")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            DatePicker("Select a date", selection: $selectedDate, in:
                        startingDate...endingDate,
                       displayedComponents: [.date]
            )
        }

    }
}

#Preview {
    SwiftUIView()
}
