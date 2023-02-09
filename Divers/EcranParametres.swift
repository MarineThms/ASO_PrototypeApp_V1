//
//  EcranParametres.swift
//  ProjetAso
//
//  Created by Apprenant 06 on 03/02/2023.
//

import SwiftUI

struct EcranParametres: View {
    var body: some View {
        ZStack {
            Color("ColorVertFond")
                .edgesIgnoringSafeArea(.all)
            
            VStack (alignment: .center) {
                Text("Paramètres")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .padding(.top, 130)
                
                /*NavigationStack {*/
                ForEach(parametres){ parametre in
                    //  NavigationLink(destination:
                    //  EcranGeolocalisation(parametre: parametre)) {
                    ZStack (alignment: .leading){
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color("ColorVertBouton"))
                            .frame(width: 350, height: 60)
                        Text(parametre.titreBoutonParametres)
                            .padding(.leading, 20)
                    }
                }
                Spacer()
                BoutonConnexion()
            }
            
        }
    }
}

struct EcranParametres_Previews: PreviewProvider {
    static var previews: some View {
        EcranParametres()
    }
}

struct Parametre : Identifiable {
    var id = UUID()
    var titreBoutonParametres: String
}

var parametres = [
    Parametre(titreBoutonParametres: "Nous contacter"),
    Parametre(titreBoutonParametres: "Confidentialité et Sécurité"),
    Parametre(titreBoutonParametres: "Accessibilité, affichage et langues"),
    Parametre(titreBoutonParametres: "Qui sommes-nous ?"),
    Parametre(titreBoutonParametres: "Désactiver le compte ")
]
