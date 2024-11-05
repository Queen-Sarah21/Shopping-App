//
//  StoreCard.swift
//  Shopping App
//
//  Created by user269332 on 10/1/24.
//

import SwiftUI

let storeImages = Places(id: 0, name: "Food 365 Valley", time: "9:00 - 10:00", rating: "★ 4.7 |📍 1.5 km", image: "1")

struct StoreCard: View {
    let store: Places
    var body: some View {
        ZStack {
            HStack{
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.gray.opacity(0.2))
                    .frame(width: 100, height: 100)
                    .overlay(Image(store.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    )
                VStack(alignment: .leading) {
                    Text("\(store.name)")
                        .font(.system(.headline))
                    Text("\(store.time)")
                        .font(.system(.subheadline))
                        .foregroundColor(.gray)
                    Text("\(store.rating)")
                }
            }
        }
    }
}

#Preview {
    StoreCard(store: storeImages)
}
