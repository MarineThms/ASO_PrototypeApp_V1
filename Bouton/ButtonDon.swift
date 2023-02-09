



import Foundation
import SwiftUI

struct ButtonDon: View  {
    @State private var sheetPresented = false

    var body: some View {
        HStack {
            Button(action: {
                self.sheetPresented.toggle()
            }) {
                Text("Faire Don")
            }
            .frame(width: 160, height: 26)
            .padding(11)
            .background(Color("ColorVertBouton"))
            .cornerRadius(10)
        }
        .sheet(isPresented: $sheetPresented) {
            EcranDon()
        }
       
    }
}
