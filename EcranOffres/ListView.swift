//
//  ListView.swift
//  EcranPostuler
//
//  Created by apprenant13 on 06/02/2023.
//

import SwiftUI

struct ListView: View {
    @State private var prenom: String = ""
    @State private var name: String = ""
    @State private var date: String = ""
    @State private var mail: String = ""
    @State private var numero: String = ""
    @State private var telechargement: String = ""
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 350, height: 50)
                    .foregroundColor(.white)
                    .shadow(radius: 2)
                    .border(.white, width: 0)
                
                HStack{
                    TextField("Entrer votre prénom", text: $prenom)
                    Button {
                        prenom = ""
                    } label: {
                        Image(systemName: "x.circle.fill")
                            .foregroundColor(.black.opacity(0.4))
                    }
                    
                    
                }
                .padding()
            }
            

                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 350, height: 50)
                        .foregroundColor(.white)
                        .shadow(radius: 2)
                        .border(.white, width: 0)
                    HStack{
                        TextField("Entrer votre nom", text: $name)
                        Button {
                            name = ""
                        } label: {
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(.black.opacity(0.4))
                        }
                    }
                    .padding()
                }

            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 350, height: 50)
                    .foregroundColor(.white)
                    .shadow(radius: 2)
                    .border(.white, width: 0)
                HStack{
                    TextField("Date de naisance", text: $date)
                    Button {
                        date = ""
                    } label: {
                        Image(systemName: "x.circle.fill")
                            .foregroundColor(.black.opacity(0.4))
                    }
                }
                .padding()
            }

                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 350, height: 50)
                            .foregroundColor(.white)
                            .shadow(radius: 2)
                            .border(.white, width: 0)
                        HStack{
                            TextField("Entrer votre adresse mail", text: $mail)
                            Button {
                                mail = ""
                            } label: {
                                Image(systemName: "x.circle.fill")
                                    .foregroundColor(.black.opacity(0.4))
                            }
                        }
                        .padding()
                    }

                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 350, height: 50)
                            .foregroundColor(.white)
                            .shadow(radius: 2)
                            .border(.white, width: 0)
                        HStack{
                            TextField("Entrer votre numéro", text: $numero)
                            Button {
                                numero = ""
                            } label: {
                                Image(systemName: "x.circle.fill")
                                    .foregroundColor(.black.opacity(0.4))
                            }
                        }
                        .padding()
                    }

                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 350, height: 50)
                            .foregroundColor(.white)
                            .shadow(radius: 2)
                            .border(.white, width: 0)
                        HStack{
                            TextField("Telecharger un fichier", text: $telechargement)

                            Button {
                                telechargement = ""
                            } label: {
                                Image(systemName: "arrow.down.app")
                                .foregroundColor(.black.opacity(0.4))
                            }
                            
                        }
                        .padding()
                        
                    }
            }
        .padding()
            
            
            
            
            
            
            
        }
    }
    
    struct ListView_Previews: PreviewProvider {
        static var previews: some View {
            ListView()
        }
    }
    
//}
