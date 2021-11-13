//
//  DaysComponent.swift
//  FitnessApp
//
//  Created by Bilel Bouricha on 12/11/2021.
//

import SwiftUI

struct DaysComponent: View {
    let days = ["MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"]
    
    var body: some View {
        HStack(spacing: 25) {
            ForEach(days, id: \.self) { day in
                VStack(spacing: 30) {
                    ZStack(alignment: .bottom) {
                        Rectangle()
                            .frame(width: 2, height: 80)
                            .foregroundColor(.black.opacity(0.2))
                        RoundedRectangle(cornerRadius: 40)
                            .frame(width: 4, height: 50)
                            .foregroundColor(.white)
                    }
                    Text(day)
                        .rotationEffect(Angle(degrees: -90))
                        .font(.caption)
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct DaysComponent_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            FColor.primaryColor
            DaysComponent()
        }
        .previewLayout(.sizeThatFits)
    }
}
