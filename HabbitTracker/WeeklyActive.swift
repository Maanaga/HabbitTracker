
import SwiftUI

struct WeeklyActive: View {
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
                .frame(height: 120)

                            VStack(alignment: .leading, spacing: 15) {
                                Text("Weekly Active Days")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                HStack(spacing: 8) {
                                    ForEach(1..<8, id: \.self) { number in
                                        ZStack {
                                            Circle()
                                                .fill(number == 1 ? Color.white : Color.white.opacity(0.3))
                                                .frame(width: 40, height: 40)
                                            
                                            Text("\(number)")
                                                .foregroundStyle(number == 1 ? .green : .white)
                                                .font(.headline)
                                        }
                                    }
                                    Spacer()
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
