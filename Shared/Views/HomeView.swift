//
//  ContentView.swift
//  Shared
//
//  Created by Bilel Bouricha on 12/11/2021.
//
import Combine
import SwiftUI
import Lottie

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModel()
    private var cancellables: Set<AnyCancellable> = []
    
    var body: some View {
        ZStack {
            FColor.primaryColor
            VStack(alignment: .leading) {
                Spacer()
                    HStack(alignment: .center) {
                        VStack(alignment: .leading) {
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
                Spacer()
                ZStack(alignment: .bottom) {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(height: 580)
                        .foregroundColor(FColor.lightGrayColor)
                    VStack(spacing: 50) {
                        HStack(spacing: 40) {
                            HomeCards(type: .steps(steps: viewModel.steps))
                            HomeCards(type: .water)
                        }
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: 350, height: 260)
                            .foregroundColor(FColor.lightGrayColor)
                        .shadow(color: .gray, radius: 5)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 50, trailing: 0))
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
