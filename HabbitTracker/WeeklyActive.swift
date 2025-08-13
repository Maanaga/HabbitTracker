

import SwiftUI

struct WeeklyActive: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
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
                .frame(width: 350, height: 100)
                    
                        .overlay(
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Weekly Activities")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                HStack(spacing: 8) {
                                    ForEach(1..<8, id: \.self) { number in
                                        ZStack {
                                            Circle()
                                                .fill(.white.opacity(0.3))
                                                .frame(width: 40, height: 40)
                                            
                                            Text("\(number)")
                                                .foregroundStyle(.white)
                                                .font(.headline)
                                        }
                                    }
                                    Spacer()
                                }
                            }
                                .padding(.leading, 20)
                        )
            }
            .padding(.bottom, 420)
        }
        
    }
}

#Preview {
    WeeklyActive()
}
