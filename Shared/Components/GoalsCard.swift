//
//  GoalsCard.swift
//  FitnessApp
//
//  Created by Bilel Bouricha on 13/11/2021.
//

import SwiftUI
import ConfettiSwiftUI

struct goals: Identifiable {

    let id = UUID()
    var name: String
    var isChecked: Bool = false
}

struct GoalsCard: View {
    @State var goalsTab: [goals] = [goals(name: "Read 10 pages"),
                    goals(name: "Follow a diet"),
                    goals(name: "45 workout"),
                    goals(name: "Take a picture")]
    //let goals = ["Read 10 pages", "Follow a diet", "45 workout", "Take a picture"]
    @State var checked = false

    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 15) {
                HStack {
                    Text("Today's Goals")
                        .font(.custom("RedHatText-Bold", size: 22))
                        .foregroundColor(FColor.secondaryColor)
                    .padding(.top, 17)
                    Spacer()
                }
                ForEach($goalsTab, id: \.id) { $goal in
                    VStack() {
                        HStack(spacing: 15) {
                            CheckBox(goal: $goal, goals: goalsTab)
                            Text(goal.name)
                                .font(.custom("RedHatText-Regular", size: 16))
                                .foregroundColor(FColor.secondaryColor)
                        }
                    }
                    
                }
                Spacer()
            }
            .padding(.leading, 25)
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
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
