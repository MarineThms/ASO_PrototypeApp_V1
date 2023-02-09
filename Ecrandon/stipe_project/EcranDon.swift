//
//  ContentView.swift
//  DropdownMenu
//
//  Created by Abdelrahman Talaat on 28/11/2022.
//

import SwiftUI

struct EcranDon: View {
    @State private var choixAssociation: Association? = nil
    
    var body: some View {
        
        ZStack{
        Color("ColorVertFond")
                .edgesIgnoringSafeArea(.all)
            VStack{
                
                VStack {
                    
                    
                    
                    EcranPageDonation().environmentObject(Cart())
                        .padding()
                }
            }
            
        }}
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EcranDon()
    }
}
