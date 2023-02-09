//
//  HeartsButton.swift
//  ASO_project
//
//  Created by apprenant16 on 08/02/2023.
//

import Foundation
import SwiftUI






struct HeartButton: View {
    @State var isliked: Bool

    var body: some View {
        Button (action: {
            self.isliked.toggle()
        }, label: {
            Image(systemName: isliked ? "heart.fill" : "heart")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(isliked ? .red : .gray)

        })
    }
}
