//
//  CurrencyIconView.swift
//  LOTR Converter
//
//  Created by Chad Eymard on 4/3/24.
//

import SwiftUI

struct CurrencyIconView: View {
    // MARK: - PROPERTIES
    let currency: Currency
    
    // MARK: - BODY
    var body: some View {
        
        // Currency icons
        ZStack(alignment: .bottom) {
            
            // Currency image
            Image(currency.image)
                .resizable()
                .scaledToFit()
            
            // Currency name
            Text(currency.name)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(.brown.opacity(0.75))
            
        } //: ZSTACK
        .padding(3)
        .frame(width: 100, height: 100)
        .background(.brown)
        .clipShape(.rect(cornerRadius: 25))    }
}

// MARK: - PREVIEW
struct CurrencyIconView_Preview: PreviewProvider {
    static var previews: some View {
        CurrencyIconView(currency: .copperPenny)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
