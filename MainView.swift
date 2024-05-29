import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: CreateBubbleView()) {
                    Text("新規吹き出し")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.top, 200)
                
                NavigationLink(destination: SavedBubblesView()) {
                    Text("保存した吹き出し")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.top, 200)
                
                Spacer()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
