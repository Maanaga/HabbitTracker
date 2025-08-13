import SwiftUI

let rows = [
    GridItem(.adaptive(minimum: 200))
    ]
struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 10) {
                Text("Lets Track Your Habbits :)")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                    .padding(.top, -10)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
                VStack {
                    ShowHabbits()
                }
                WeeklyActive()
                
                Spacer()
                    .padding(.vertical, -40)
                
            
        
            .navigationTitle("Hello, Luka!")
        }
    }
}

    
    #Preview {
        ContentView()
    }

