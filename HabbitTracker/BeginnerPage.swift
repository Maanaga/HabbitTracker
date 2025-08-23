import SwiftUI

struct BeginnerPage: View {
    let meditation: Meditation
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 5) {
                Text("Step \(meditation.step)")
                    .font(.title)
                    .fontWeight(.semibold)
                Text(meditation.title)
                    .font(.title2)
                    .fontWeight(.medium)
                Text(meditation.description)
                    .font(.headline)
            }
        }
       
    }
}

#Preview {
    let meditations: [String: Meditation] = Bundle.main.decode("meditation.json")
    return BeginnerPage(meditation: meditations["1"]!)
}
