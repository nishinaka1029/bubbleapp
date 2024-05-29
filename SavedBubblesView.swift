import SwiftUI

struct SavedBubblesView: View {
    @State private var savedBubbles: [String] = []
    @State private var selectedBubbleText: String = ""
    @State private var selectedBubbleImage: String = ""
    @State private var showOutput: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(savedBubbles, id: \.self) { bubble in
                        Button(action: {
                            let components = bubble.split(separator: ":")
                            selectedBubbleImage = String(components[0])
                            selectedBubbleText = String(components[1])
                            showOutput = true
                        }) {
                            Text(bubble)
                        }
                    }
                }
                .navigationDestination(isPresented: $showOutput) {
                    OutputView2(text: selectedBubbleText, bubbleImage: selectedBubbleImage)
                }
            }
            .onAppear {
                // 保存された吹き出しを読み込み
                if let savedData = UserDefaults.standard.array(forKey: "SavedBubbles") as? [String] {
                    savedBubbles = savedData
                }
            }
        }
    }
}

struct SavedBubblesView_Previews: PreviewProvider {
    static var previews: some View {
        SavedBubblesView()
    }
}
