import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SecondView()) {
                    Text("Ir a la segunda vista")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .navigationBarTitle("Primera Vista", displayMode: .inline)
        }
    }
}

struct SecondView: View {
    var body: some View {
        VStack {
            Text("Segunda Vista")
                .font(.largeTitle)
                .padding()
            
            NavigationLink(destination: ThirdView()) {
                Text("Ir a la tercera vista")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .navigationBarTitle("Segunda Vista", displayMode: .inline)
    }
}

struct ThirdView: View {
    var body: some View {
        VStack {
            Text("Tercera Vista")
                .font(.largeTitle)
                .padding()
        }
        .navigationBarTitle("Tercera Vista", displayMode: .inline)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
