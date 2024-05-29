import SwiftUI

struct CreateBubbleView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: TextEditorView(selectedBubble: "bubble1")) {
                    Image("bubble1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                }
                .padding(.top, 10)

                NavigationLink(destination: TextEditorView(selectedBubble: "bubble2")) {
                    Image("bubble2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                }
                .padding(.top, 50)

                NavigationLink(destination: TextEditorView(selectedBubble: "bubble3")) {
                    Image("bubble3")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                }
                .padding(.top, 50)
            }
        }
    }
}

struct CreateBubbleView_Previews: PreviewProvider {
    static var previews: some View {
        CreateBubbleView()
    }
}
