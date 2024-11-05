//
//  HomeScreen.swift
//  Shopping App
//
//  Created by user269332 on 9/30/24.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        ZStack{
            VStack(alignment: .leading, spacing: 10){
                //top bar
                HStack{
                    Image(systemName: "line.3.horizontal")
                    Spacer()
                    Image(systemName: "cart.badge.plus")
                }
                
                //search box
                Text("Hey")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Find fresh fruits that you want.")
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(.gray.opacity(0.3))
                    .overlay(
                        HStack{
                            Image(systemName: "magnifyingglass")
                            Text("Search Fresh Fruits")
                                .foregroundStyle(.gray)
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }.padding()
                    ).frame(width: 350, height: 60, alignment: .center)
                
                //horizontal scroll view
                Text("Top Selling")
                    .font(.title)
                    .fontWeight(.bold)
                //Top Selling View
                TopSellingView()
                
                //Near you view (vertical scrolll)
                Text("Near You")
                    .font(.title)
                    .fontWeight(.bold)
                NearYouView()
                Spacer()
                
            }.padding()
        }.navigationBarTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
    }
}

#Preview {
    HomeScreen()
}
