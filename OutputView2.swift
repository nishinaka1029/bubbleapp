import SwiftUI

struct OutputView2: View {
    var text: String
    var bubbleImage: String
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
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
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
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

struct OutputView2_Previews: PreviewProvider {
    static var previews: some View {
        OutputView2(text: "サンプルテキスト", bubbleImage: "bubble1")
    }
}
