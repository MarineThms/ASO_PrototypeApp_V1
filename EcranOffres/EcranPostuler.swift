//
//  EcranPostuler.swift
//  EcranPostuler
//
//  Created by apprenant13 on 06/02/2023.
//

import SwiftUI

struct EcranPostuler: View {
    @State private var showingPopover = false
    var body: some View {
        ZStack{
            Color("ColorVertFond")
                .edgesIgnoringSafeArea(.all)
            VStack{
                    HStack{
                        header()
                    }
                    .padding()
        
                            VStack{
                                Image("RestosDuCoeur")
                                    .resizable()
                                    .frame(width: 90, height: 90)
                                    .clipShape(Circle())
                            
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(.white)
                                        .shadow(radius: 2)
                                        .frame(width: 250, height: 50)
                                    Text("Chargé.e de mission Régional")
                                        
                                }
                                ListView()
                                Button("Valider") {
                                            showingPopover = true
                                        }
                                        .popover(isPresented: $showingPopover) {
                                            Text("Votre inscription à bien été prise en compte!")
                                                .font(.headline)
                                                .padding()
                                        }
                          
                           
                        .frame(height: 20)
                        .foregroundColor(.gray)
                        .padding(10)
                        .background(Color("ColorVertBouton"))
                        .cornerRadius(10)
                        
                              

                    }
                    .padding()
                Spacer()
                }
                .padding()
            
            }
        .padding()
        }
    }
    
    struct EcranPostuler_Previews: PreviewProvider {
        static var previews: some View {
            EcranPostuler()
        }
    }
    

