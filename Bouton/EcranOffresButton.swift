import SwiftUI

struct EcranOffresButton: View {
    @State private var selection = "Missions"
    let filterOptions = ["Missions", "Missions Courtes", "Missions Longues"]

    var body: some View {
      
            HStack{
                                Picker(
                                    selection: $selection,
                                    label:
                                        HStack {
                                            Text("Toutes nos offres")
                                            Text(selection)
                                                
                                        }
                                        //.padding()
                                        .padding(8)
                                        .background(Color.black),
                                    
                                    
                                    content:  {
                                        ForEach(filterOptions, id: \.self) { option in
                                            Text(option)
                                                .tag(option)
                                        }
                                    })
                                .frame(width: 160, height: 26)
                                .padding(11)
                                .background(Color("ColorJaune"))
                                .cornerRadius(10)
        }
    }
}

struct EcranOffresButton_Previews: PreviewProvider {
    static var previews: some View {
        EcranOffresButton()
    }
}
