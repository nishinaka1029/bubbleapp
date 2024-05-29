import SwiftUI

struct OutputView: View {
    var text: String
    var bubbleImage: String
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationStack {
            VStack {
                Image(bubbleImage)
                    .resizable()
                    .scaledToFit()
                    .overlay(
                        Text(text)
                            .font(.system(size: 50))
                            .padding(),
                        alignment: .center
                    )
                    .frame(width: 400, height: 400)

                NavigationLink(destination: MainView()) {
                    Text("戻る")
                        .font(.title)
                        .padding()
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(50)
                }
                .padding(.top, 20)
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct OutputView_Previews: PreviewProvider {
    static var previews: some View {
        OutputView(text: "サンプルテキスト", bubbleImage: "bubble1")
    }
}
