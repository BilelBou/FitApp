//
//  Button.swift
//  FitnessApp
//
//  Created by Bilel Bouricha on 13/11/2021.
//

import SwiftUI

struct FButton: View {
    var body: some View {
        Button(action: {
            print("ok")

        }) {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: 63)
                    .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
                    .foregroundColor(.white.opacity(0.5))
                HStack(spacing: 100) {
                    Text("Go to my training")
                        .font(.custom("RedHatText-Bold", size: 24))
                        .foregroundColor(.white)
                    Image(systemName: "arrow.right")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(FColor.primaryColor)
                }
            }
        }
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        FButton()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
