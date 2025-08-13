

import SwiftUI

struct ShowHabbits: View {
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
                            
                            Text("Gain You Happiness And Piece")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                            
                        }
                        
                        .padding()
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ShowHabbits()
}
