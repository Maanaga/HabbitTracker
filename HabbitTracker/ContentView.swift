import SwiftUI

let rows = [
    GridItem(.adaptive(minimum: 200))
    ]
struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: rows) {
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
                                    Text("Meditaiton")
                                        .foregroundStyle(.white)
                                        .font(.title)
                                    
                                    
                                    Text("Gain You Happiness And Piece")
                                        .foregroundStyle(.white)
                                        .font(.subheadline)
                                    
                                }
                                .padding(30)
                            }
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
                                    
                                    
                                    Text("Gain You Happiness And Piece")
                                        .foregroundStyle(.white)
                                        .font(.subheadline)
                                    
                                }
                                .padding(30)
                            }
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
                    }
                }
            }
        
        }
        .navigationTitle("HabbitTracker")
    }
}
    
    #Preview {
        ContentView()
    }

