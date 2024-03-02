import SwiftUI

struct ContentView: View {

    @State var rectangleHeight: CGFloat = 50

    var body: some View {
        TabView {
            ZStack(alignment: .bottom) {
                ScrollView {
                    ForEach(1..<101) { index in
                        Text("\(index)")
                            .frame(maxWidth: .infinity)
                    }
                }
                .contentMargins(
                    .all,
                    EdgeInsets(top: 0, leading: 0, bottom: rectangleHeight, trailing: 0),
                    for: .automatic
                )

                Color
                    .red
                    .opacity(0.5)
                    .frame(width: .infinity, height: rectangleHeight)
            }

            .tabItem {
                Label("First", systemImage:"list.dash")
            }
        }
    }
}

#Preview {
    ContentView()
}
