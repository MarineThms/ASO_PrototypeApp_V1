//
//  ScrollViewVerticalOffre.swift
//  EcranGeolocalisation2
//
//  Created by Apprenant 07 on 08/02/2023.
//

import SwiftUI
struct ScrollViewVerticalOffre: View {
    //    @Binding var OffreButton: String
    let columns = [
        GridItem(.flexible())
    ]
    var body : some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20)
            {
                ForEach(offresBenevolat){ offres in
                    VStack(){
                        ZStack(alignment: .center){
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width:351,height: 125)
                                .foregroundColor(Color.white)
                                .shadow(radius: 2)
                            VStack(alignment: .trailing){
                                HStack{
                                    
                                    Image(offres.logoAssociation)
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                    
                                    VStack(alignment: .leading){
                                        
                                        Text(offres.nameAssociation)
                                            .font(.title3)
                                        Text(offres.titreMission)
                                            .font(.caption)
                                    }
                                    
                                    Spacer()
                                    
                                    VStack{
                                        
                                        HeartButton(isliked: offres.isliked)
                                            
                                            .padding(.bottom)
                                            .offset(x:-5,y:-5)
                                        
                                        
                                        
                                    }
                                    
                                }
                                
                                
                                
                                
                                
                                Offres(offreBenevolat: offres)
                                
                                
                            }
                            .padding()
                        }
                        
                    }
                    .padding(.horizontal)
                }
                //End encart offres
            }
            .padding(.top, 8)
        
        }
    }
}
