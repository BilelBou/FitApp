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
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: 45)
                    .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
                .foregroundColor(FColor.lightGrayColor)
                HStack(spacing: 100) {
                    Text("Go to my training")
                        .font(.custom("RedHatText-Regular.ttf", size: 17))
                    .foregroundColor(FColor.primaryColor)
                    Image(systemName: "arrow.right")
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
