//
//  IconGridView.swift
//  LOTR Converter
//
//  Created by Chad Eymard on 4/4/24.
//

import SwiftUI

struct IconGridView: View {
    @Binding var selectedCurrency: Currency
    
    var body: some View {
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], content: {
            ForEach(Currency.allCases) { currency in
                if currency == selectedCurrency {
                    CurrencyIconView(currency: currency)
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .overlay(RoundedRectangle(cornerRadius: 25).stroke(lineWidth: 3)
                        .opacity(0.3))
                } else {
                    CurrencyIconView(currency: currency)
                        .onTapGesture {
                            selectedCurrency = currency
                        }
                }
            }
        })
    }
}

// MARK: - PREVIEW
struct IconGridView_Preview: PreviewProvider {
    static var previews: some View {
        IconGridView(selectedCurrency: .constant(.silverPenny))
            .previewLayout(.sizeThatFits)
    }
}
