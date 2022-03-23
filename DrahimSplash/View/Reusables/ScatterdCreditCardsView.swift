//
//  ScatterdCreditCardsView.swift
//  DrahimSplash
//
//  Created by Abdulelah Hajjar on 23/03/2022.
//

import SwiftUI

struct ScatterdCreditCardsView: View {
    var body: some View {
        ZStack {
            CreditCardView(style: .orange,
                           network: .visa,
                           isWithMada: true,
                           balanceAmount: 12543
            )
            .padding(.horizontal, 56)
            .scaleEffect(0.9)
            .offset(x: -Constants.screenWidth / 1.6)
            .rotationEffect(.degrees(-14))

            
            CreditCardView(style: .blue,
                           network: .visa,
                           isWithMada: true,
                           balanceAmount: 698
            )
            .padding(.horizontal, 56)
            .scaleEffect(0.6)
            .rotationEffect(.degrees(-3))
            .offset(y: 10)
            
            CreditCardView(style: .purple,
                           network: .mastercard,
                           isWithMada: false,
                           balanceAmount: 5698
            )
            .padding(.horizontal, 60)
            .scaleEffect(0.7)
            .rotationEffect(.degrees(10))
            .offset(x: Constants.screenWidth / 1.8,
                    y: 50)
        }
    }
}

struct ScatterdCreditCardsView_Previews: PreviewProvider {
    static var previews: some View {
        ScatterdCreditCardsView()
    }
}
