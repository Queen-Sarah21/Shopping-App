//
//  FruitCard.swift
//  Shopping App
//
//  Created by user269332 on 9/30/24.
//

import SwiftUI

//a sample fruit
let images = FruitModel(id: 1, title: .apple, image: "apple", price: "3.44$",
                       color: "1")
struct FruitCard: View {
    let fruit: FruitModel
    var body: some View {
        ZStack{
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title.rawValue)
                    .fontWeight(.bold)
                    .font(.system(.title3))
                    .foregroundStyle(.black)
                
                Text(fruit.price)
                    .font(.system(.title3))
                    .foregroundStyle(.black.opacity(0.7))
                Spacer()
            }.padding()
                .frame(width: 175, height: 150, alignment: .center)
                .background(Color(fruit.color))
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(color: .black.opacity(0.3), radius: 10, x: 5, y: 5)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 110)
                .shadow(color: .black.opacity(0.3), radius: 10,
                        x: 5, y: 5)
                .offset(y: 60)
        }
        .frame(width: 175, height: 250, alignment: .center)
    }
}

#Preview {
    FruitCard(fruit: images)
}
