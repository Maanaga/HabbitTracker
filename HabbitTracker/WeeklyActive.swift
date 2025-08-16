
import SwiftUI

struct WeeklyActive: View {
    @State private var days = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
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
                                    ForEach(0..<7, id: \.self) { number in
                                        VStack(spacing: 6) {
                                            ZStack {
                                                Circle()
                                                    .fill(number == 1 ? Color.white : Color.white.opacity(0.3))
                                                    .frame(width: 40, height: 40)
                                                
                                                Text("\(number + 1)")
                                                    .foregroundStyle(number == 1 ? .green : .white)
                                                    .font(.headline)
                                            }
                                            Text(days[number])
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
