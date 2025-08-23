import SwiftUI

struct BeginnerPage: View {
    let meditations: [Meditation]
    
    var body: some View {
        NavigationView {
            List(meditations) { meditation in
                NavigationLink(destination: MeditationDetailView(meditation: meditation)) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Step \(meditation.step)")
                            .font(.caption)
                        Text(meditation.title)
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundStyle(.green)
                        Text(meditation.description)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .padding()
                }
            }
            .navigationTitle("Beginner's Guide")
        }
    }
}

struct MeditationDetailView: View {
    let meditation: Meditation
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 6) {
                Text("Step \(meditation.step)")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.green)
                
                Text(meditation.title)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text(meditation.description)
                    .font(.headline)
                    .foregroundStyle(.secondary)
                
            }
            .padding(.horizontal, 12)
        }
        .navigationTitle("Meditation")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let allMeditations: [String: Meditation] = Bundle.main.decode("meditation.json")
    
    let beginnerMeditations = (1...10).compactMap { step in
        allMeditations["\(step)"]
    }
    
    return BeginnerPage(meditations: beginnerMeditations)
}
