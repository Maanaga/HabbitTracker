

import SwiftUI

struct ShowHabbits: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: -5) {
                    VStack {
                        ZStack(alignment: .bottomLeading) {
                            Image("Meditation")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 350, height: 150)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .padding()
                                .brightness(-0.2)
                            VStack(alignment: .leading) {
                                Text("Meditation")
                                    .foregroundStyle(.white)
                                    .font(.title)
                                
                                
                                Text("Gain Your Happiness And Piece")
                                    .foregroundStyle(.white)
                                    .font(.subheadline)
                                
                            }
                            .padding(30)
                        }
                        .frame(maxHeight: .infinity, alignment: .top)
                    }
                    VStack {
                        ZStack(alignment: .bottomLeading) {
                            Image("Learning")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 350, height: 150)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .padding()
                                .brightness(-0.1)
                            VStack(alignment: .leading) {
                                Text("Education")
                                    .foregroundStyle(.white)
                                    .font(.title)
                                
                                
                                Text("Upgrade Your Knowledge Everyday")
                                    .foregroundStyle(.white)
                                    .font(.subheadline)
                                
                            }
                            .padding(30)
                        }
                        
                        .frame(maxHeight: .infinity, alignment: .top)
                    }
                    VStack {
                        ZStack(alignment: .bottomLeading) {
                            Image("Travel")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 350, height: 150)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .padding()
                                .brightness(-0.2)
                            VStack(alignment: .leading) {
                                Text("Travel")
                                    .foregroundStyle(.white)
                                    .font(.title)
                                
                                
                                Text("Gain You Happiness And Piece")
                                    .foregroundStyle(.white)
                                    .font(.subheadline)
                                
                            }
                            
                            .padding(30)
                        }
                    }
                    .frame(maxHeight: .infinity, alignment: .top)
                }
        }
    }
}

#Preview {
    ShowHabbits()
}
