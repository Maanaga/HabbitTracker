import SwiftUI

struct BeginnerPage: View {
    let meditation: Meditation
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 15) {
                Text(meditation.description)
            }
        }
       
    }
}

#Preview {
    let meditations: [String: Meditation] = Bundle.main.decode("meditation.json")
    return BeginnerPage(meditation: meditations["1"]!)
}
