

import SwiftUI

struct MeditationPage: View {
    let allMeditations: [String: Meditation] = Bundle.main.decode("meditation.json")
    @State private var showingSheet = false
    @State private var selectedPage: Int? = nil
    var body: some View {
        NavigationView {
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
                        .onTapGesture {
                            selectedPage = 1
                            showingSheet = true
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
                        .onTapGesture {
                            selectedPage = 2
                            showingSheet = true
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
                        
                        Text("Reach absolute inner peace")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.medium)
                    }
                    .onTapGesture {
                        selectedPage = 3
                        showingSheet = true
                    }
                    .padding()
                }
                .sheet(isPresented: $showingSheet, onDismiss:  {
                    selectedPage = nil
                }) {
                    ZStack(alignment: .topLeading) {
                        Color(.systemBackground)
                            .ignoresSafeArea()
                        Group {
                            if selectedPage == 1 {
                                BeginnerPage(meditations: beginnerMeditations)
                            }
                            else if selectedPage == 2 {
                                IntermediatePage(meditations: intermediateMeditations)
                            }
                            else if selectedPage == 3 {
                                AdvancedPage(meditations: advancedMeditations)
                            }
                        }
                        Button(role: .cancel) {
                            showingSheet.toggle()
                        } label: {
                            Image(systemName: "arrow.left")
                                .font(.title)
                                .foregroundStyle(.green)
                                .padding()
                        }
                    }
                }
            }
                .padding(.horizontal, 30)
            }
        }
    private var beginnerMeditations: [Meditation] {
        (1...10).compactMap { step in
        allMeditations["\(step)"]
        }
    }
    private var intermediateMeditations: [Meditation] {
        (11...20).compactMap { step in
            allMeditations["\(step)"]
        }
    }
    private var advancedMeditations: [Meditation] {
        (21...30).compactMap { step in
            allMeditations["\(step)"]
        }
    }
}
#Preview {
    MeditationPage()
}
