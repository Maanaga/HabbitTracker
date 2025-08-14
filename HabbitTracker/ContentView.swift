import SwiftUI

let rows = [
    GridItem(.adaptive(minimum: 200))
    ]
struct ContentView: View {
    @State private var darkMode = false
    @State private var showingSheet = false
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
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
            .preferredColorScheme(darkMode ? .dark : .light)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        darkMode.toggle()
                    }) {
                        Image(systemName: darkMode ? "sun.max" : "moon")
                            .foregroundColor(darkMode ? .white : .black)
                    }
                }
            }
        }
    }
}


    #Preview {
        ContentView()
    }
