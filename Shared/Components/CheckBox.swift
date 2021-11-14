//
//  CheckBoc.swift
//  FitnessApp
//
//  Created by Bilel Bouricha on 13/11/2021.
//

import SwiftUI
import ConfettiSwiftUI

struct CheckBox: View {
    @Binding var goal: goals
    var goals: [goals]
    @State var counter:Int = 0

     var body: some View {
         Image(systemName: goal.isChecked ? "checkmark.square.fill" : "square")
             .resizable()
             .frame(width: 22, height: 22)
             .foregroundColor(goal.isChecked ? Color(FColor.primaryColor.cgColor!) : FColor.primaryColor)
             .onTapGesture {
                 self.goal.isChecked.toggle()
                 if goals.allSatisfy(\.isChecked) {
                     counter += 1
                 } else {
                     print("not ok")
                 }
             }
         ConfettiCannon(counter: $counter, confettis: [.text("❤️"), .text("💙"), .text("💚"), .text("🧡")])
     }
}
