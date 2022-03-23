//
//  ScatteredCategoriesView.swift
//  DrahimSplash
//
//  Created by Abdulelah Hajjar on 23/03/2022.
//

import SwiftUI

struct ScatteredCategoriesView: View {
    var body: some View {
        ZStack {
            CategoryView(icon: .car)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .offset(x: 16, y: 8)
            
            CategoryView(icon: .food)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                .offset(x: -40, y: 48)
            
            CategoryView(icon: .person, status: .increased(amount: 225))
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
                .offset(y: 24)
            
            CategoryView(icon: .house)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                .offset(x: 32, y: 6)
            
            CategoryView(icon: .wifi)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                .offset(x: -32, y: -6)
            
            CategoryView(icon: .cart, status: .decreased(amount: 24))
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                .offset(y: 40)
            
            CategoryView(icon: .bag, status: .decreased(amount: 20))
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .offset(x: 8, y: 64)
        }
        .padding(.horizontal)
        .padding(.vertical, 40)
        .frame(width: Constants.screenWidth, height: Constants.screenWidth)
    }
}

struct ScatteredCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        ScatteredCategoriesView()
    }
}
