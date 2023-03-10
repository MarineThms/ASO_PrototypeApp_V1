//
//  Confirmation.swift
//  FruitStore
//
//  Created by Mohammad Azam on 10/7/21.
//

import SwiftUI

struct Confirmation: View {
    @State var TelechargementButton = "Télécharger"
    var body: some View {
        
        
        
        ZStack{
            
        
            Color("ColorVertFond")
            
            VStack {
                header()
                    .padding()
                ZStack {//donation reussie
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color("ColorJaune"))
                            .frame(width:320, height: 100)
                    Text ("Donation Réussie!")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                   
                }
                .padding(30)//espaces entre les composants
                
                ZStack{//recap du don
                    
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color("ColorRose"))
                        .frame(width:350, height: 350)
                    VStack {
                        Text("Merci pour votre don !")
                            .font(.title)
                            .padding(.bottom)
                        Text("Voici un récapitulatif :")
                            .font(.title2)
                            .fontWeight(.regular)
                            .padding(.bottom)
                        Text("• Association: La Croix Rouge")
                            .font(.body)
                            .fontWeight(.thin)
                            .frame(width: 300, height: 0, alignment: .leading)
                        Text("• Numéro du don:  024")
                            .font(.body)
                            .fontWeight(.thin)
                            .frame(width: 300, height: 40, alignment: .leading)
                        Text("• Montant :  1000 euros ")
                            .font(.body)
                            .fontWeight(.thin)
                            .frame(width: 300, height: 0, alignment: .leading)
                        Text("• Note:  Au nom de ma défunte mere \r Anita je fait don comme elle la souhaité. ")
                            .font(.body)
                            .fontWeight(.thin)
                            .frame(width: 300, height: 70, alignment: .leading)
                        
                        VStack {/*Button*/ Telechargements(TelechargementButton: $TelechargementButton)
                        }
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}



struct Telechargements: View {//Button telechargement
@Binding var TelechargementButton: String
    var body: some View {
        Button  (action: {
        }, label: {
            Text("Télécharger")
                .font(.body)
                .foregroundColor(.black)
                .padding(15)
                .background(Color("ColorJaune"))
                .cornerRadius(20)
        })
    }
}


struct Confirmation_Previews: PreviewProvider {
    static var previews: some View {
        Confirmation()
    }
}
