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
            .background(Color(red:0.8, green: 0.2,blue: 0.4))
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

struct ContentView2: View {
    var body: some View {
        ZStack {
            Color(red: 0.9, green: 0.2, blue: 0.9)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                // TODO
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
