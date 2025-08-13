import SwiftUI

let rows = [
    GridItem(.adaptive(minimum: 200))
    ]
struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    ShowHabbits()
                }
        WeeklyActive()
                
                .navigationTitle("Hello, Luka!")
                .padding(.vertical, -40)

            }
        }
    }
}
    
    #Preview {
        ContentView()
    }

