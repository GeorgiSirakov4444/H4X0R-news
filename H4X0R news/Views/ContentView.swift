import SwiftUI

struct ContentView: View {
    @Binding var document: H4X0R_newsDocument
    
    @ObservedObject var networkingManger = Networkmanager()

    var body: some View {
        NavigationView {
            List(networkingManger.posts) { post in
                NavigationLink(destination: DetailedView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4X0R news")
        }
        .onAppear {
            self.networkingManger.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(H4X0R_newsDocument()))
    }
}

