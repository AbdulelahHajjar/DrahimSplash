//
//  CreditCardView.swift
//  DrahimSplash
//
//  Created by Abdulelah Hajjar on 23/03/2022.
//

import SwiftUI

struct CreditCardView: View {
    enum Style {
        case orange
        case blue
        case purple
        
        var mainColor: Color {
            switch self {
            case .orange: return .drahimOrange
            case .blue: return .skyBlue
            case .purple: return .darkPurple
            }
        }
        
        var shadowColor: Color {
            switch self {
            case .orange: return .drahimPink
            case .blue: return .greishBlue
            case .purple: return .veryDarkPurple
            }
        }
        
        var gradient: LinearGradient {
            switch self {
            case .orange:
                return LinearGradient(colors: [.drahimPink, .drahimOrange], startPoint: .bottom, endPoint: .top)
            case .blue:
                return LinearGradient(colors: [.greishBlue, .skyBlue], startPoint: .bottom, endPoint: .top)
            case .purple:
                return LinearGradient(colors: [.veryDarkPurple, .darkPurple], startPoint: .bottom, endPoint: .top)
            }
        }
    }
    
    enum Network {
        case visa
        case mastercard
    }
    
    let style: Style
    let network: Network
    let isWithMada: Bool
    let balanceAmount: Double
    
    var body: some View {
        VStack {
            header
            Spacer().frame(height: 20)
            mainContent
            Spacer().frame(height: 24)
            footer
        }
        .padding()
        .background(style.gradient)
        .cornerRadius(16)
        .shadow(color: style.shadowColor.opacity(0.4), radius: 8, x: 0, y: 8)
    }
    
    var footer: some View {
        HStack {
            redactedRectangle
                .frame(width: 72)
            Spacer()
            VStack(alignment: .trailing) {
                Text("رصيد الحساب")
                    .font(.subheadline)
                Text("\(String(format: "%.2f", balanceAmount)) ريال")
                    .bold()
                    .font(.title3)
            }
            .foregroundColor(.white)
        }
    }
    
    var mainContent: some View {
        VStack {
            redactedRectangle
                .padding(.leading, 72)
            Spacer().frame(height: 12)
            redactedRectangle
                .padding(.leading, 200)
        }
    }
    
    var header: some View {
        HStack {
            Group {
                switch network {
                case .visa:
                    Image(Asset.visaLogo.rawValue)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                case .mastercard:
                    Image(Asset.mastercardLogo.rawValue)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
            .frame(height: 20)
            
            Spacer()
            
            if isWithMada {
                Image(Asset.madaLogo.rawValue)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 20)
            }
        }
    }
    
    var redactedRectangle: some View {
        RoundedRectangle(cornerRadius: 24)
            .fill(style.mainColor)
            .frame(height: 10)
    }
}

struct CreditCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardView(style: .orange,
                       network: .visa,
                       isWithMada: true,
                       balanceAmount: 12543)
    }
}
