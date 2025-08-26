import SwiftUI

struct AdvancedPage: View {
    let meditations: [Meditation]
    @State private var showingSheet = false
    @State private var selectedMeditation: Meditation? = nil
    
    var body: some View {
        NavigationView {
            List(meditations) { meditation in
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
                .onTapGesture {
                    selectedMeditation = meditation
                    showingSheet = true
                }
            }
            
            .navigationTitle("Advanced's Guide")
            .sheet(isPresented: $showingSheet) {
                ZStack(alignment: .topLeading) {
                    if let meditation = selectedMeditation {
                        MeditationDetailView(meditation: meditation)
                            .presentationDetents([.medium])
                    }
                }
            }
        }
    }
    
    struct MeditationDetailView: View {
        let meditation: Meditation
        @State private var showingSecondSheet = false
        
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
                    Spacer()
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
                            .frame(height: 60)
                        Text("Complete")
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                    }
                }
                .padding(.horizontal, 12)
            }
            .navigationTitle("Meditation")
            .navigationBarTitleDisplayMode(.inline)
            .padding()
        }
    }
}
        
    
    #Preview {
        let allMeditations: [String: Meditation] = Bundle.main.decode("meditation.json")
        
        let advancedMeditations = (21...30).compactMap { step in
            allMeditations["\(step)"]
        }
        
        return IntermediatePage(meditations: advancedMeditations)
    }
