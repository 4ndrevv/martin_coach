//
//  chart.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 07/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct chart: View {
    
    @State var currentWeek: [Date] = []
    @State var currentDay: Date = Date()
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Activity")
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
            graph()
            
            Spacer()
            Spacer()
            
            Text("Progress")
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            
            //Mark : Activity Ring view
            activity_ring_card()
            
            Spacer()
            Spacer()
            
            
            HStack {
                Text("Activity recent")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
                Button {
                    
                } label: {
                    
                    Text("Add")
                        .font(.title3)
                }
            }
            
            
            //Mark: Current week view
            HStack(spacing: 10) {
                ForEach(currentWeek, id: \.self) {date in
                    Text(extracDate(date: date))
                        .fontWeight(isSameDay(date1: currentDay, date2: date) ? .bold : .semibold)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, isSameDay(date1: currentDay, date2: date) ? 6 : 0)
                        .padding(.horizontal, isSameDay(date1: currentDay, date2: date) ? 12 : 0)
                        .frame(width: isSameDay(date1: currentDay, date2: date) ? 140 : nil)
                        .background {
                            Capsule()
                                .fill(.ultraThinMaterial)
                                .environment(\.colorScheme, .light)
                                .opacity(isSameDay(date1: currentDay, date2: date) ? 0.8 : 0)
                        }
                        .onTapGesture {
                            withAnimation{
                                currentDay = date
                            }
                        }
                }
                
            }
            .padding(.top, 10)
            
        }
        .padding()
        .onAppear(perform: extractCurrentWeek)
        progress_tab()
            .padding()
    }
    //Mark : Extracting Current Week
    func extractCurrentWeek() {
        let calendar = Calendar.current
        let week = calendar.dateInterval(of: .weekOfMonth, for: Date())
        
        guard let firstDay = week?.start else{
            return
        }
        
        (0..<7).forEach { day in
            if let weekDay = calendar.date(byAdding: .day, value: day, to: firstDay) {
                currentWeek.append(weekDay)
            }
        }
    }
    
    //Mark: Extracting Custom Date Components
    func extracDate(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = (isSameDay(date1: currentDay, date2: date) ? "dd MMM" : "dd")
        
        return (isDateToday(date: date) && isSameDay(date1: currentDay, date2: date) ? "Today, " : "") + formatter.string(from: date)
    }
    
    //Mark: Check Date is Today or Same day
    func isDateToday (date: Date) -> Bool {
        let calendar = Calendar.current
        
        return calendar.isDateInToday(date)
    }
    
    func isSameDay (date1 : Date, date2: Date) -> Bool{
        let calendar = Calendar.current
        return calendar.isDate(date1, inSameDayAs: date2)
    }
}

struct chart_Previews: PreviewProvider {
    static var previews: some View {
        animal_activity_detail()
    }
}
