import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            ZStack {
                // 背景画像を追加
                Image("background2")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                // 背景全体をタップ可能にするための透明なリンク
                NavigationLink(destination: LoginView()) {
                    VStack {
                        // 縦書きのために各文字を改行して表示
                        Text("フ\nキ\nダ\nス")
                            .font(.system(size: 80))  // 文字サイズを大きくする
                            .fontWeight(.bold)  // 太字にする
                            .foregroundColor(Color.white.opacity(0.7))  // 文字を透過させる
                            .padding(.top, 100)
                            .multilineTextAlignment(.center)  // 文字を中央に配置
                        
                        Spacer()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.clear)  // 透明な背景
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
