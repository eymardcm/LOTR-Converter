//
//  ExchangeRateView.swift
//  LOTR Converter
//
//  Created by Chad Eymard on 4/3/24.
//

import SwiftUI

struct ExchangeRateView: View {
    // MARK: - PROPERTIES
    let leftImage: ImageResource
    let rightImage: ImageResource
    let text: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            // Lett currency image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(width: 33)
            
            // Exchange rate text
            Text(text)
            
            // Right currency image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(width: 33)
            
        } //: HSTACK
    }
}

// MARK: - PREVIEW
struct ExchangeRateView_Preview: PreviewProvider {
    static var previews: some View {
        ExchangeRateView(leftImage: .goldpiece, rightImage: .goldpenny, text: "1 Gold Piece == 4 Gold Pennies")
            .previewLayout(.sizeThatFits)
    }
}
