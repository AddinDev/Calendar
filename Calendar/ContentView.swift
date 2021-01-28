//
//  ContentView.swift
//  Calendar
//
//  Created by addin on 26/01/21.
//

import SwiftUI
import CalendarList

struct ContentView: View {
    @ObservedObject var net = Net()
    var events: [CalendarEvent<String>] {
        var calendarEvents: [CalendarEvent<String>] = []
        for i in net.events {
            calendarEvents.append(CalendarEvent(dateString: i.start.formattedDate, data: i.summary))
        }
        return calendarEvents
    }
        
        var body: some View {
            CalendarList(events: self.events) { event in
                Text("\(event.data)")
            }
            .listStyle(PlainListStyle())
            .accentColor(.green)
//            List(net.events) { event in
//                HStack {
//                    Text(event.summary)
//                    Spacer()
//                    VStack {
//                        Text("start: \(event.start.formattedDate)")
//                        Text("end: \(event.end.formattedDate)")
//
//                    }
//
//                }
//            }
            .onAppear {
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
