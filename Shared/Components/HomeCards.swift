//
//  HomeCards.swift
//  FitnessApp
//
//  Created by Bilel Bouricha on 13/11/2021.
//

import SwiftUI

enum cardType {
    case steps(steps: Double), water
    
    var title: String {
        switch self {
        case .steps:
            return "STEPS"
        case .water:
            return "WATER"
        }
    }
    
    var unit: String {
        switch self {
        case .steps:
            return "step"
        case .water:
            return "ml"
        }
    }
}

struct HomeCards: View {
    var type: cardType
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 150, height: 250)
                .foregroundColor(.white)
                .shadow(color: .gray, radius: 5, x: 0, y: 5)
            VStack(alignment: .leading, spacing: 30) {
                Text(type.title)
                    .font(.custom("RedHatText-Bold", size: 22))
                    .foregroundColor(FColor.secondaryColor)
                Circle()
                    .trim(from: 0.0, to: 0.3)
                    .stroke(lineWidth: 10)
                    .frame(width: 80, height: 80)
                    .foregroundColor(FColor.primaryColor)
                    .background {
                        Circle()
                            .stroke(lineWidth: 10)
                            .foregroundColor(.black.opacity(0.2))
                            .frame(width: 80, height: 80)
                }
                VStack(alignment: .leading) {
                    switch type {
                    case .steps(let steps):
                        Text(String(steps))
                            .font(.custom("RedHatText-Bold", size: 22))
                            .foregroundColor(FColor.secondaryColor)
                    case .water:
                        Text("???")
                            .font(.custom("RedHatText-Bold", size: 22))
                            .foregroundColor(FColor.secondaryColor)
                    }
                    Text("\(type.unit) on 10,000")
                        .font(.custom("RedHatText-Regular", size: 14))
                        .foregroundColor(.black.opacity(0.2))
                }
                .foregroundColor(.black)
            }
        }
    }
}

struct HomeCards_Previews: PreviewProvider {
    static var previews: some View {
        HomeCards(type: .steps(steps: 0))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
