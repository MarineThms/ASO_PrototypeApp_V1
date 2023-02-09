//
//  ScrollViewHorizontalProfilAssociation.swift
//  ProjetAso
//
//  Created by Apprenant 06 on 06/02/2023.
//

import SwiftUI

struct ScrollViewVerticaleOffre: View {
    
    let columns = [
        GridItem(.flexible())
    ]
    var nameAssociation: String
    var body: some View {
        
        NavigationStack{
            ScrollView() {
               
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(offresBenevolat){ offreBenevolat in
                        NavigationLink(destination: EcranDetailPostuler(offreBenevolat: offreBenevolat)) {
                            ZStack (alignment: .top){
                                
                                RoundedRectangle(cornerRadius: 11)
                                    .fill(.white)
                                    .frame(width: 327, height: 150)
                                    .shadow(radius: 3, x:0, y:0)
                                
                                
                                
                                VStack  {
                                    
                                    
                                    HStack{
                                        Image(offreBenevolat.logoAssociation)
                                        
                                            .resizable()
                                            .frame(width: 40, height:40)
                                            .padding()
                                        
                                        
                                        VStack (alignment: .leading) {
                                            Text(offreBenevolat.nameAssociation)
                                                .foregroundColor(.black)
                                                .multilineTextAlignment(.leading)
                                                .font(.system(size: 16))
                                                .fontWeight(.bold)
                                                .padding()
                                                
                                               
                                            
                                            
                                            Text(offreBenevolat.titreMission)
                                                .foregroundColor(.black)
                                                .fixedSize(horizontal: false, vertical: true)
                                                .font(.system(size: 14))
                                                .frame(width:200 , height:5 )
                                                .multilineTextAlignment(.leading)
                                                
                                            
                                            
                                            
                                        }
                                        
                                        .padding()
                                        
                                        
                                    }
                                    
                                }
                            }
                        }
                        
                        
                    }
                    
                    
                }
            
//            .frame(width:400, height: 470)
            
                
            }
        }
        
    }
}

struct ScrollViewVerticaleOffre_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewVerticaleOffre(nameAssociation: "Le Secours Populaire")
    }
}
