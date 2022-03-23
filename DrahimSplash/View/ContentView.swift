//
//  ContentView.swift
//  DrahimSplash
//
//  Created by Abdulelah Hajjar on 23/03/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isScaledDown: Bool = true
    
    var body: some View {
        ZStack {
            ScatterdCreditCardsView()
                .frame(maxHeight: .infinity, alignment: .top)
                .scaleEffect(isScaledDown ? 1e-9 : 1,
                             anchor: .center)
            circleEffect
                .scaleEffect(isScaledDown ? 0.4 : 1,
                             anchor: .center)
            ScatteredCategoriesView()
                .scaleEffect(isScaledDown ? 1e-9 : 1,
                             anchor: .center)
            callToAction
                .frame(maxHeight: .infinity, alignment: .bottom)
            logo
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(drahimGlow)
        .background(Color.background.edgesIgnoringSafeArea(.all))
        .onAppear {
            withAnimation(.spring(response: 1.15,
                                  dampingFraction: 0.65,
                                  blendDuration: 0)) {
                isScaledDown = false
            }
        }
    }
    
    var callToAction: some View {
        VStack(spacing: 8) {
            Text("Drahim")
                .font(.title2)
                .bold()
            Text("Control your finances.")
                .foregroundColor(.secondary)
            Spacer().frame(height: 24)
            
            Button(action: {}) {
                Text("Start Using Drahim")
                    .bold()
                    .foregroundColor(.white)
                    .padding(.vertical, 14)
                    .padding(.horizontal, 18)
                    .background(Color.drahimPrimary)
                    .cornerRadius(32)
            }
        }
        .padding(.bottom, 32)
    }
    
    var logo: some View {
        Image(Asset.drahimLogo.rawValue)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 81, height: 81)
    }
    
    var circleEffect: some View {
        CircleEffectView()
            .scaleEffect(0.7)
    }
    
    var drahimGlow: some View {
        Color.drahimPrimary
            .clipShape(Circle())
            .blur(radius: 100)
            .opacity(0.05)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
