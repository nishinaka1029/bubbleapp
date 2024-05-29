import SwiftUI

struct TextEditorView: View {
    @State private var text: String = ""
    @State private var showOutputView: Bool = false
    @State private var showSavedView: Bool = false
    
    var selectedBubble: String
    
    var body: some View {
        VStack {
            TextEditor(text: $text)
                .font(.system(size: 18))
                .border(Color.gray, width: 1)
                .padding()
                .frame(height: 200)
                .padding(.top, 100)
                .padding(.horizontal, 25)

            NavigationLink(destination: OutputView(text: text, bubbleImage: selectedBubble), isActive: $showOutputView) {
                Button(action: {
                    showOutputView = true
                }) {
                    Text("出力")
                        .font(.title)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.top, 20)
            }

            NavigationLink(destination: SavedBubblesView(), isActive: $showSavedView) {
                Button(action: {
                    // 吹き出しテンプレートを保存するロジックを実装
                    var savedBubbles = UserDefaults.standard.array(forKey: "SavedBubbles") as? [String] ?? []
                    savedBubbles.append("\(selectedBubble):\(text)")
                    UserDefaults.standard.set(savedBubbles, forKey: "SavedBubbles")
                    showSavedView = true
                }) {
                    Text("保存")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.top, 20)
            }
        }
        .navigationDestination(for: String.self) { destination in
            if destination == "OutputView" {
                OutputView(text: text, bubbleImage: selectedBubble)
            } else if destination == "SavedBubblesView" {
                SavedBubblesView()
            }
        }
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView(selectedBubble: "bubble1")
    }
}
