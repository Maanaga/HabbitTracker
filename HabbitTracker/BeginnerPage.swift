import SwiftUI

struct BeginnerPage: View {
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
            
            .navigationTitle("Beginner's Guide")
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
        @AppStorage("isComplete") var isComplete: Bool = false
        
        init(meditation: Meditation) {
            self.meditation = meditation
            self._isComplete = AppStorage(wrappedValue: false, "isComplete_step_\(meditation.step)")
        }
        
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
                    Button {
                        isComplete.toggle()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .fill(
                                    LinearGradient(
                                        gradient: Gradient(colors: isComplete ? [
                                            Color.green.opacity(0.9),
                                            Color.green.opacity(0.6)
                                        ] : [Color.red.opacity(0.9),
                                             Color.red.opacity(0.6)]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .frame(height: 60)
                            Text(isComplete ? "Complete" : "Uncomplete")
                                .fontWeight(.semibold)
                                .foregroundStyle(.white)
                        }
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
        
        let beginnerMeditations = (1...10).compactMap { step in
            allMeditations["\(step)"]
        }
        
        return BeginnerPage(meditations: beginnerMeditations)
    }
