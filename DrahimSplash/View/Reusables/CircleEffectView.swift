//
//  CircleEffectView.swift
//  DrahimSplash
//
//  Created by Abdulelah Hajjar on 23/03/2022.
//

import SwiftUI

struct CircleEffectView: View {
    var body: some View {
        ZStack {
            Group {
                circle
                circle.scaleEffect(0.83)
                circle.scaleEffect(0.66)
            }
            .frame(width: UIScreen.main.bounds.size.width,
                   height: UIScreen.main.bounds.size.width
            )
        }
        .overlay(
            VStack {
                HStack {
                    circle
                        .frame(width: 16, height: 16)
                        .padding(.horizontal, 40)
                    Spacer()
                    circle
                        .frame(width: 10, height: 10)
                        .padding(.horizontal, 50)
                }
                Spacer()
                HStack {
                    circle
                        .frame(width: 12, height: 12)
                        .padding(.horizontal, 48)
                    Spacer()
                    circle
                        .frame(width: 18, height: 18)
                        .padding(.horizontal, 70)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        )
    }
    
    var circle: some View {
        Circle()
            .fill(Color.drahimPrimary)
            .opacity(0.025)
    }
}

struct CircleEffectView_Previews: PreviewProvider {
    static var previews: some View {
        CircleEffectView()
    }
}
