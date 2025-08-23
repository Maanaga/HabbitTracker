import SwiftUI


struct WeeklyActive: View {
    private var weekDates: [Date] {
        let calendar = Calendar.current
        let today = Date()
        
        let startOfWeek = calendar.dateInterval(of: .weekOfYear, for: today)!.start
        
        return (0..<7).compactMap { calendar.date(byAdding: .day, value: $0, to: startOfWeek)}
    }
    
    private var weekdayFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE"
        return formatter
    }
    
    private var dayFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "d"
        return formatter
    }
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color.green.opacity(0.9),
                            Color.green.opacity(0.6)
                        ]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(height: 140)

                            VStack(alignment: .leading, spacing: 15) {
                                Text("Weekly Active Days")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                HStack(spacing: 8) {
                                    ForEach(weekDates, id: \.self) { date in
                                        VStack(spacing: 6) {
                                            ZStack {
                                                Circle()
                                                    .fill(Calendar.current.isDateInToday(date) ? Color.white : Color.white.opacity(0.3))
                                                    .frame(width: 40, height: 40)
                                                
                                                Text(dayFormatter.string(from: date))
                                                    .foregroundStyle(Calendar.current.isDateInToday(date) ? .green : .white)
                                                    .font(.headline)
                                            }
                                            Text(weekdayFormatter.string(from: date))
                                                .font(.caption)
                                                .foregroundColor(.secondary)
                                            
                                        }
                                    }
                                }
                            }
                            .padding()
            }
            .padding(.horizontal)
        }
        
    }
}

#Preview {
    WeeklyActive()
}
