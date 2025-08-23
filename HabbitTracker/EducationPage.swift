
import SwiftUI

struct EducationPage: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 15) {
                Text("Education")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, -10)
                
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
                            Text("Education Progress")
                                .foregroundStyle(.white)
                                .font(.system(size: 25))
                                .fontWeight(.semibold)
                            Text("20 Task Left")
                                .foregroundStyle(.secondary)
                                .font(.system(size: 15))
                        }
                        Spacer()
                        ZStack {
                            Circle()
                                .trim(from: 0, to: 0.2)
                                .rotation(Angle(degrees: -90))
                                .stroke(Color.white, lineWidth: 5)
                                .frame(width: 60, height: 60)
                            
                            Text("20%")
                                .foregroundStyle(.white)
                                .font(.headline)
                        }
                    }
                    .padding(.horizontal, 15)
                }
            }
            .padding()
            Text("Current Courses")
                .font(.headline)
                .padding(.horizontal, 20)
                .frame(maxWidth: .infinity, alignment: .leading)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ZStack(alignment: .bottomLeading) {
                        Image("Languages")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 350, height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .brightness(-0.2)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Languages")
                                .foregroundStyle(.white)
                                .font(.title)
                                .fontWeight(.semibold)
                            
                            Text("Start learning new languages")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .fontWeight(.medium)
                        }
                        .padding()
                    }
                    ZStack(alignment: .bottomLeading) {
                        Image("Reading")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 350, height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .brightness(-0.2)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Reading")
                                .foregroundStyle(.white)
                                .font(.title)
                                .fontWeight(.semibold)
                            Text("Start reading literature")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .fontWeight(.medium)
                        }
                        .padding()
                    }
                }
                .padding(.horizontal, 20)
            }
        }
        .padding(.vertical, 20)
    }
}


#Preview {
    EducationPage()
}
