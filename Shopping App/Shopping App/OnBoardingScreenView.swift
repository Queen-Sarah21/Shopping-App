//
//  OnBoardingScreenView.swift
//  Shopping App
//
//  Created by user269332 on 9/30/24.
//

import SwiftUI

struct OnBoardingScreenView: View {
    var body: some View {
        //move from one screen to another -> Navigation view
        NavigationView{
            VStack(spacing: 30) {
                Spacer()
                Image("img")
                    .resizable()
                    .scaledToFill()
                    .padding()
                VStack(alignment: .leading, spacing: 10){
                    Text("Order Your Favorite Fruits.")
                        .fontWeight(.bold)
                        .font(.system(.largeTitle))
                    Text("Eat fresh fruits and try to be healthy.")
                        .font(.system(.title3))
                        .foregroundStyle(.black.opacity(0.7))
                }
                Spacer()
                // navigation link to move from one screen to another
                NavigationLink(destination: HomeScreen()) {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color("6"))
                        .frame(width:280, height: 60,
                               alignment: .trailing)
                        .overlay(
                            HStack(spacing: 30) {
                                Text("Next")
                                    .font(.title)
                                    .fontWeight(.bold)
                                
                                Image(systemName: "chevron.right")
                            }.foregroundStyle(.black)
                        )
                }
                Spacer()
            }
        }
        .navigationTitle("") //bring out the navigation top bar
        .navigationBarHidden(true)
            //.navigationBarBackButtonHidden(true)
            
    }
}

#Preview {
    OnBoardingScreenView()
}
