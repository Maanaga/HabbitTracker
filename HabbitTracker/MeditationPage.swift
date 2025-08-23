

import SwiftUI

struct MeditationPage: View {
    var body: some View {
        ScrollView {

            VStack(alignment: .leading, spacing: 15) {
                Text("Meditation")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 10)
                    .padding(.horizontal, 20)
                
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
                                .trim(from: 0, to: 0.6)
                                .rotation(Angle(degrees: -90))
                                .stroke(Color.white, lineWidth: 5)
                                .frame(width: 60, height: 60)
                            
                            Text("60%")
                                .foregroundStyle(.white)
                                .font(.headline)
                        }
                    }
                    .padding(.horizontal, 15)
                }
                .padding(.horizontal, 20)
                
                Text("Current Course")
                    .font(.headline)
                    .padding(.horizontal, 20)
                
                ZStack(alignment: .bottomLeading) {
                    Image("MeditationTwo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 350, height: 150)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .brightness(-0.1)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Beginner")
                            .foregroundStyle(.white)
                            .font(.title)
                            .fontWeight(.semibold)
                    
                        
                        Text("Take your first steps in meditation")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.medium)
                    }
                    .padding()
                }
                .padding(.horizontal, 30)
                
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundStyle(Color.black.opacity(0.2))
                    .padding(.horizontal, 20)
                
                
                Text("Other Courses")
                    .font(.headline)
                    .padding(.horizontal, 20)
                
                ZStack(alignment: .bottomLeading) {
                    Image("MeditationThree")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 350, height: 150)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .brightness(-0.1)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Intermediate")
                            .foregroundStyle(.white)
                            .font(.title)
                            .fontWeight(.semibold)
                        
                        Text("Enhance your meditation skills")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.medium)
                    }
                    .padding()
                }
                .padding(.horizontal, 30)
            }
            
            ZStack(alignment: .bottomLeading) {
                Image("MeditationFour")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 350, height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .brightness(-0.1)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Advanced")
                        .foregroundStyle(.white)
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Text("Reach absolute inner piece")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.medium)
                }
                .padding()
            }
            .padding(.horizontal, 30)
        }
    }
}
#Preview {
    MeditationPage()
}
