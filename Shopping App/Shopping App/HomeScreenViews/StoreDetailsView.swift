//
//  StoreDetailsView.swift
//  Shopping App
//
//  Created by user269332 on 10/1/24.
//

import SwiftUI

////rounded rectangle
//struct RoundedCornerShape: Shape {
//    let corner: UIRectCorner
//    let radius: CGFloat
//    
//    func path(in rect: CGRect) -> Path {
//        let path = UIBezierPath(roundedRect: rect,
//            byRoundingCorners: corner, cornerRadii:
//            CGSize(width: radius, height: radius))
//        return Path(path.cgPath)
//    }
//}


struct StoreDetailsView: View {
    @State var store: Places
    var body: some View {
        VStack(alignment: .leading, spacing: 25){
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.top)
                .clipShape(RoundedCornerShape.init(corner: [.bottomLeft, .bottomRight], radius: 50))
                .frame(width: .infinity, height: .infinity, alignment: .top)
                .edgesIgnoringSafeArea(.all)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                .overlay(
                    Image("\(store.image)")
                        .resizable()
                        .frame(width: 250, height: 250, alignment: .center)
                        .shadow(color: .gray, radius: 5, x: 5, y: 5)
                )
            Spacer()
            Text("\(store.name) - Location")
                                    .fontWeight(.medium)
                                    .font(.system(.title3))
                                    .padding(.horizontal)
                                    .textCase(.uppercase)
            Text("Qc,Canada")
                .padding(.horizontal)
            Text("\(store.rating) - Rating")
                                    .fontWeight(.medium)
                                    .font(.system(.title3))
                                    .padding(.horizontal)
                                    .textCase(.uppercase)
            
            Text("\(store.time) - Opening Hours")
                                    .fontWeight(.medium)
                                    .font(.system(.title3))
                                    .padding(.horizontal)
                                    .textCase(.uppercase)
                
            Text("Welcome to our Food Store, where freshness meets quality! We’re thrilled to have you here and are dedicated to providing you with the finest selection of products. Our top priority is ensuring that every customer enjoys a welcoming, clean, and friendly shopping experience. We believe in offering the freshest ingredients, exceptional service, and great value for your everyday needs. Your satisfaction is our number one goal, and we strive to make each visit delightful. Thank you for choosing us!")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .lineLimit(15)
                .padding(.horizontal)
            
            Image("bg")
                .resizable()
                .frame(width: 350, height: 50, alignment:
                        .center)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(color: .green, radius: 5, x: 5, y: 5)
                .overlay(
                    Text("Thank you for Visiting!")
                        .font(.system(.title3))
                        .fontWeight(.medium)
                ).padding(.horizontal)
            
        }
    }
}

#Preview {
    StoreDetailsView(store: Places(id: 0, name: "Food 365 Valley", time: "9:00 - 10:00", rating: "★ 4.7 |📍 1.5 km", image: "1"))
}
