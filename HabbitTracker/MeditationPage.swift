

import SwiftUI

struct MeditationPage: View {
    var body: some View {
        ScrollView {
            Spacer()
            Spacer()
            VStack(alignment: .leading) {
                Text("Meditation")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    
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
                    HStack {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Meditation Progress")
                            .foregroundStyle(.white)
                            .font(.system(size: 25))
                            .fontWeight(.semibold)
                        Text("9 Exercise Left")
                            .foregroundStyle(.secondary)
                            .font(.system(size: 15))
                    }
                    Spacer()
                    ZStack {
                        Circle()
                            .strokeBorder(Color.black.opacity(0.1), lineWidth: 1.0)
                            .frame(width: 60, height: 60)
                        
                        Text("60%")
                            .foregroundStyle(.white)
                            .font(.headline)
                    }
                }
                .padding(.horizontal, 15)
            }
        }
            .padding(.horizontal)
        }
    }
}
#Preview {
    MeditationPage()
}
