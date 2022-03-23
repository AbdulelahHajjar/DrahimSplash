//
//  CategoryView.swift
//  DrahimSplash
//
//  Created by Abdulelah Hajjar on 23/03/2022.
//

import SwiftUI

struct CategoryView: View {
    enum Icon {
        case bag
        case car
        case food
        case person
        case house
        case wifi
        case cart
        
        var image: Image {
            switch self {
            case .bag: return Image(systemName: "bag")
            case .car: return Image(systemName: "car")
            case .food: return Image(systemName: "fork.knife")
            case .person: return Image(systemName: "person")
            case .house: return Image(systemName: "house")
            case .wifi: return Image(systemName: "wifi")
            case .cart: return Image(systemName: "cart")
            }
        }
        
        var color: Color {
            switch self {
            case .bag: return .drahimYellow
            case .car: return .darkPurple
            case .food: return .drahimPink
            case .person: return .drahimTeal
            case .house: return .drahimPurple
            case .wifi: return .skyBlue
            case .cart: return .greishBlue
            }
        }
    }
    
    enum Status {
        case increased(amount: Int)
        case decreased(amount: Int)
        
        var tintColor: Color {
            switch self {
            case .increased: return Color.drahimGreen
            case .decreased: return Color.drahimPink
            }
        }
        
        var icon: Image {
            switch self {
            case .increased: return Image(systemName: "arrow.up.right")
            case .decreased: return Image(systemName: "arrow.down.right")
            }
        }
    }
    
    let icon: Icon
    var status: Status? = nil
    
    var body: some View {
        HStack(spacing: 10) {
            switch status {
            case .increased(let amount), .decreased(let amount):
                Text("\(amount)")
                    .bold()
                    .font(.subheadline)
                    .foregroundColor(.textColor)
            case .none: EmptyView()
            }
            if let status = status {
                status.icon
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 10, height: 10)
                    .foregroundColor(status.tintColor)
                    .padding(4)
                    .background(status.tintColor.opacity(0.2))
                    .cornerRadius(2)
            }
            icon.image
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .foregroundColor(icon.color)
        }
        .padding(.vertical, 14)
        .padding(.horizontal, status == nil ? 14 : 10)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color.textColor.opacity(0.05), radius: 8, x: 0, y: 2)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(icon: .food, status: .decreased(amount: 20))
    }
}
