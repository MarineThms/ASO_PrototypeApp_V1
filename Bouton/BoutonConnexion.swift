//
//  BoutonConnexion.swift
//  EcranDetailPostuler
//
//  Created by apprenant13 on 08/02/2023.
//

import SwiftUI

struct BoutonConnexion: View {
    @State private var connexion = false
    var body: some View {
        VStack {
            Button(connexion ? "Connexion" : "Déconnexion") {
                connexion.toggle()
            }
        }
        .tint(Color("ColorJaune"))
        .foregroundColor(Color.black)
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.roundedRectangle)
        .frame(width: 200, height: 100)
    }
}

struct BoutonConnexion_Previews: PreviewProvider {
    static var previews: some View {
        BoutonConnexion()
    }
}
