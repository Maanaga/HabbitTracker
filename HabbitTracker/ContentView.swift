import SwiftUI

let rows = [
    GridItem(.adaptive(minimum: 200))
    ]
struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 10) {
                Text("Lets Track Your Habits :)")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                
                ShowHabbits()
                
                WeeklyActive()
                
                Spacer()
            }
                
            
        
            .navigationTitle("Hello, Luka!")
        }
    }
}

    
    #Preview {
        ContentView()
    }

