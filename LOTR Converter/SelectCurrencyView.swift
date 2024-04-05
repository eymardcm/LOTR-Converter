//
//  SelectCurrencyView.swift
//  LOTR Converter
//
//  Created by Chad Eymard on 4/3/24.
//

import SwiftUI

struct SelectCurrencyView: View {
    // MARK: - PROPERTIES
    @Environment(\.dismiss) var dismiss
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency
    
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack() {
                // Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                // Currency Grid
                IconGridView(selectedCurrency: $topCurrency)
                
                // Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                // Currency Grid
                IconGridView(selectedCurrency: $bottomCurrency)
                
                // Done button
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .tint(.brown)
                .font(.largeTitle)
                .padding(.vertical)
                .foregroundStyle(.white)
                
            } //: VSTACK
            .padding()
            .backgroundStyle(.black)
        } //: ZSTACK
    }
}

// MARK: - PREVIEW
struct SelectCurrencyView_Preview: PreviewProvider {
    static var previews: some View {
        SelectCurrencyView(topCurrency: .constant(.copperPenny), bottomCurrency: .constant(.goldPiece))
    }
}
