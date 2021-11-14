//
//  ContentView.swift
//  Shared
//
//  Created by Bilel Bouricha on 12/11/2021.
//
import Combine
import SwiftUI
import Lottie
import ConfettiSwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModel()
    private var cancellables: Set<AnyCancellable> = []
    
    var body: some View {
        ZStack {
            FColor.primaryColor
            VStack(alignment: .leading) {
                Spacer()
                VStack {
                    HStack(alignment: .center) {
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Hello Bibo !")
                                    .font(.custom("RedHatText-Bold", size: 30))
                                    .foregroundColor(.black)
                                Text("Have a nice day")
                                    .font(.custom("RedHatText-Regular", size: 16))
                                    .foregroundColor(.white)
                            }
                            .padding()
                            Spacer()
                            Circle()
                                .foregroundColor(.white)
                                .frame(width: 70, height: 70)
                        }
                        .frame(maxWidth: .infinity)
                    .padding()
                    FButton()
                }
                Spacer()
                ZStack(alignment: .bottom) {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(height: 540)
                        .foregroundColor(FColor.lightGrayColor)
                    VStack(spacing: 40) {
                        GoalsCard()
                            .padding(EdgeInsets(top: 0, leading: 33, bottom: 0, trailing: 33))
                        HStack(spacing: 40) {
                            HomeCards(type: .steps(steps: viewModel.steps))
                            HomeCards(type: .water)
                        }
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 60, trailing: 0))
                    }
                }
            }
        }
        .ignoresSafeArea()
        .onAppear {
            viewModel.fetchSteps()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
