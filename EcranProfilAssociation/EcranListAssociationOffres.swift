//
//  ListAssociationOffres.swift
//  AFP_ASO_Solidaire
//
//  Created by apprenant16 on 04/02/2023.
//

import Foundation
import SwiftUI

struct EcranListAssociationOffres: View {
    @State var searchText: String = ""
    @State private var isliked = [false, false, false]
    @State private var isassociation = [false, false, false]
    @State var OffreButton = "+ Voir l'offre"
    
    
    
    let associations = [
        ListOffreAssociation(titreOffreAssociation: "Secours Populaire", mission: "bénévolat-Distribution de repas", imageAssociation: "SecourPopulaire", dateOffres: 10, imageBackground:"Secours"),
        ListOffreAssociation(titreOffreAssociation: "Restaurants du Coeur", mission: "Distribution de repas", imageAssociation: "RestaurantsduCoeur", dateOffres: 12, imageBackground:"Coluche"),
        ListOffreAssociation(titreOffreAssociation: "Handicap International", mission: "Aide aux personnes handicapées", imageAssociation: "HandicapInternational", dateOffres: 14, imageBackground:"Handicap"),
        ListOffreAssociation(titreOffreAssociation: "Handicap International", mission: "Aide aux personnes handicapées", imageAssociation: "HandicapInternational", dateOffres: 14, imageBackground:"Handicap")
        
    ]
    
    
    
    var body: some View {
        VStack {
            
            ForEach(0 ..< associations.count, id: \.self) { index in
                let association = associations[index]
                ZStack{
                    
                    
                    RoundedRectangle(cornerRadius: 10)
                    
                        .foregroundColor(Color.white)
                        .shadow(radius: 20)
                    
                    
                    
                    
                    HStack{
                        
                        VStack{
                            
                            
                            
                            
                            ZStack{
                                Rectangle()
                                    .padding(1)
                                    .foregroundColor(.white)
                                
                                    .opacity(0.8)
                                
                                VStack{
                                    
                                    Text(association.titreOffreAssociation)
                                        .foregroundColor(Color.black)
                                        .font(.title)
                                        .padding()
                                    
                                    
                                    
                                    
                                    Text("\(association.dateOffres) février 2023")
                                    
                                }
                                
                                
                            }
                            
                            
                            
                            
                            
                            
                            
                            Spacer()
                            
                            
                            HStack{
                                ListOffres(OffreButton: self.$OffreButton)
                                    .padding()
                                
                                
                                
                                ButtonDon()
                                    .padding()
                                
                                
                            }
                        }
                        
                    }
                    
                }
                
            }
        }
    }
}


struct ListOffreAssociation: Identifiable {
    let id = UUID()
    var titreOffreAssociation: String
    var mission: String
    var imageAssociation: String
    var dateOffres: Int
    var imageBackground: String
    
}


struct ListOffres: View {
    @Binding var OffreButton: String
    var body: some View {
        
        HStack{
            Button(action: {
            }) {
                Text("Voir \rOffre")
            }
            .padding()
            .foregroundColor(.black)
            .background(Color("ColorJaune"))
            .cornerRadius(20)
            .frame(width: 120, height: 75)
            
            
            
        }
        
    }
}


//struct HeartButton: View {
//    @Binding var isliked: Bool
//    
//    var body: some View {
//        Button (action: {
//            self.isliked.toggle()
//        }, label: {
//            Image(systemName: isliked ? "heart.fill" : "heart")
//                .resizable()
//                .frame(width: 20, height: 20)
//                .foregroundColor(isliked ? .red : .gray)
//            
//        })
//    }
//}



struct EcranListAssociationOffres_Previews: PreviewProvider {
    static var previews: some View {
        EcranListAssociationOffres()
    }
}
