//
//  GoalsCard.swift
//  FitnessApp
//
//  Created by Bilel Bouricha on 13/11/2021.
//

import SwiftUI

struct GoalsCard: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 30) {
                HStack {
                    Text("Today's Goals")
                        .font(.custom("RedHatText-Bold", size: 22))
                        .foregroundColor(FColor.secondaryColor)
                    .padding(.top, 20)
                    .padding(.leading, 25)
                    Spacer()
                }
                Spacer()
            }
            .frame(height: 246)
            .background {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.white)
                    .shadow(color: .gray, radius: 5, x: 0, y: 5)
            }
        }
    }
}

struct GoalsCard_Previews: PreviewProvider {
    static var previews: some View {
        GoalsCard()
    }
}
