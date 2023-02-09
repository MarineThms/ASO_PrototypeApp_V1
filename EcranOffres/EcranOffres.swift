//
//   EcranOffres.swift
//  Aso
//
//  Created by sarah iglla on 01/02/2023.
//

import SwiftUI

struct EcranOffres: View {
    @State var searchText: String = ""

    var body: some View {
        
        NavigationStack {
            
            ZStack {

                Color("ColorVertFond")
                    .ignoresSafeArea()
                
                
                
                VStack{
                    
                    header()
                    
                    RechercheBar()
                        .padding()
                    HStack{
                        
                        EcranOffresButton()
                          
                        
                        ButtonDon()
                        
                       
                    }
                    .padding()
                    
                    VStack{
                        
                        ScrollViewVerticalOffre()
                           
                    }
                    
                    
                    
                }
            }
        }
        
    }
}

struct Offres: View {
    var offreBenevolat : OffreBenevolat
    var body: some View {
       NavigationLink(destination: EcranDetailPostuler(offreBenevolat: offreBenevolat)){
            Text("+ voir l'offre")
                .font(.caption)
                .foregroundColor(.black)
                .padding(9)
                .background(Color("ColorJaune"))
                .cornerRadius(20)
        }
    }
}


struct EcranOffres_Previews: PreviewProvider {
    static var previews: some View {
        EcranOffres()
    }
}
