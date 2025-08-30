

import SwiftUI

struct ShowHabbits: View {
    @State private var showingSheet = false
    @State private var selectedPage: Int? = nil

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                VStack {
                    ZStack(alignment: .bottomLeading) {
                        Image("Meditation")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 350, height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .brightness(-0.2)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Meditation")
                                .foregroundStyle(.white)
                                .font(.title)
                                .fontWeight(.semibold)
                            
                            
                            Text("Gain Your Happiness And Piece")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            
                        }
                        .padding()
                    }
                    .onTapGesture {
                        selectedPage = 1
                        showingSheet = true
                    }
                }
                VStack {
                    ZStack(alignment: .bottomLeading) {
                        Image("Learning")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 350, height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .brightness(-0.1)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Education")
                                .foregroundStyle(.white)
                                .font(.title)
                                .fontWeight(.semibold)
                            
                            
                            Text("Upgrade Your Knowledge Everyday")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                            
                        }
                        .padding()
                    }
                    .onTapGesture {
                        selectedPage = 2
                        showingSheet = true
                    }
                }
                VStack {
                    ZStack(alignment: .bottomLeading) {
                        Image("Travel")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 350, height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .brightness(-0.2)
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Travel")
                                .foregroundStyle(.white)
                                .font(.title)
                                .fontWeight(.semibold)
                            
                            
                            Text("Relax And Fresh Your Mind")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                        }
                        .padding()
                    }
                    .onTapGesture {
                        selectedPage = 3
                        showingSheet = true
                    }
                }
            }
            .padding(.horizontal)
            .sheet(isPresented: $showingSheet, onDismiss: {
                    selectedPage = nil
        }) {
                ZStack(alignment: .topLeading) {
                    Color(.systemBackground)
                        .ignoresSafeArea()
                    Group {
                        if selectedPage == 1 {
                            MeditationPage()
                        }
                        else if selectedPage == 2 {
                            EducationPage()
                        }
                        else {
                            TravelPage()
                        }
                    }
                    .padding(.top, 50)
                    
                    
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
    }
}

#Preview {
    ShowHabbits()
}
