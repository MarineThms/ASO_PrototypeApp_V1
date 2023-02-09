//
//  Headerr.swift
//  ASO_project
//
//  Created by apprenant16 on 08/02/2023.
//

import Foundation
import SwiftUI
struct header: View {
    var body: some View {
        HStack{
            
            NavigationLink(destination: EcranQuiSommesNous()){
                Image("LogoAso")
                    .resizable()
                    .frame(width: 120, height: 50)
                
                
           
                
            }
            
            Spacer()
            
            NavigationLink(destination: EcranParametres()){
                Image(systemName: "gear")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.gray)
            }
        }
        .padding(.trailing)
        .padding(.leading)
    }
}
