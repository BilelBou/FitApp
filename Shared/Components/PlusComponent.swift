//
//  PlusComponent.swift
//  FitnessApp
//
//  Created by Bilel Bouricha on 12/11/2021.
//

import SwiftUI

struct PlusComponent: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 150, height: 150)
                .foregroundColor(FColor.primaryColor.opacity(0.5))
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                .foregroundColor(FColor.primaryColor)
            }
        }
    }
}

struct PlusComponent_Previews: PreviewProvider {
    static var previews: some View {
        PlusComponent()
    }
}
