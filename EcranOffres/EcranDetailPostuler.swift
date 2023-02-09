//
//  EcranDetailPostuler.swift
//  EcranDetailPostuler
//
//  Created by apprenant13 on 01/02/2023.
//

import SwiftUI

struct EcranDetailPostuler: View {
    var offreBenevolat: OffreBenevolat
    var body: some View {
        NavigationStack{
            ZStack {
                Color("ColorVertFond")
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    
                        header()
                        
                    
//                    .padding(.bottom, 40)
                    VStack {
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(.white)
                                .frame(width: 350, height: 500)
                                .shadow(radius: 4)
                                .padding()
                            
                            
                            VStack{
                                Spacer()
                                ScrollView{
                                    HStack{
                                        Image(offreBenevolat.logoAssociation)
                                            .resizable()
                                            .frame(width: 50, height: 50)
//                                            .background(.gray)
                                            .clipShape(Circle ())
                                            .shadow(radius: 1)
                                            .padding()
                                        
                                        VStack {
                                            Text(offreBenevolat.nameAssociation)
                                                .font(.title3)
                                                .foregroundColor(Color("ColorTextNoir"))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                .fontWeight(.bold)
                                            Text(offreBenevolat.titreMission)
                                                .foregroundColor(Color("ColorTextNoir"))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                            
                                        }
                                        
                                    }
                                    
                                    VStack (alignment: .leading) {
                                        
                                        Text(offreBenevolat.nameAssociation)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color("ColorTextNoir"))
                                            .padding(.bottom, 1)
                                        Text(offreBenevolat.presentationAssociation)
                                            .font(.system(size: 14))
                                            .fixedSize(horizontal: false, vertical: true)
                                            .foregroundColor(Color("ColorTextNoir"))
                                            .padding(.bottom, 20)
                                        Text("Mission :")
                                            .fontWeight(.semibold)
                                            .padding(.bottom, 1)
                                        Text(offreBenevolat.mission)
                                            .foregroundColor(Color("ColorTextNoir"))
                                            .font(.system(size: 14))
                                            .fixedSize(horizontal: false, vertical: true)
                                            .padding(.bottom, 20)
                                        
                                        Text("Disponibilités :")
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("ColorTextNoir"))
                                            .padding(.bottom, 1)
                                        Text(offreBenevolat.disponibilite)
                                            .font(.system(size: 14))
                                            .foregroundColor(Color("ColorTextNoir"))
                                        HStack {
                                            Image(systemName: "mappin.circle.fill")
                                                .resizable()
                                                .frame(width: 15, height: 15)
                                                .foregroundColor(Color("ColorOrange"))
                                            Text("31 rue du Casino, 31300 Toulouse")
                                                .font(.system(size: 14))
                                                .foregroundColor(Color("ColorTextNoir"))
                                        }
                                    }
                                    .padding()
                                }
                                
                                .padding()
                                
                                Spacer()
                                
                                
                                
                                
                            }
                            .padding()
                        }
                        
                        
                        NavigationLink(destination: EcranPostuler()){
                            Text("Je deviens bénévole")
                        }
                        .frame(height: 20)
                        .foregroundColor(Color("ColorTextNoir"))
                        .padding(10)
                        .background(Color("ColorJaune"))
                        .cornerRadius(10)
                        .padding()
                    }
                    
                }
                .padding()
            }
        }
      
    }
}


struct DetailPostuler_Previews: PreviewProvider {
    static var previews: some View {
        EcranDetailPostuler(offreBenevolat: offresBenevolat[0])
    }
}
