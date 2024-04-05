//
//  ExchangeInfo.swift
//  LOTR Converter
//
//  Created by Chad Eymard on 3/30/24.
//

import SwiftUI

struct ExchangeInfoView: View {
    // MARK: - PROPERTIES
    @Environment(\.dismiss) var dismiss
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            // Background parchment image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                
                // Title text
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                
                // Description text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                    .padding(.vertical)
                // Exchange rates
                
                ExchangeRateView(leftImage: .goldpiece, rightImage: .goldpenny, text: "1 Gold Piece = 4 Gold Pennies")
                
                ExchangeRateView(leftImage: .goldpenny, rightImage: .silverpiece, text: "1 Gold Penny = 4 Silver Pieces")

                ExchangeRateView(leftImage: .silverpiece, rightImage: .silverpenny, text: "1 Silver Piece = 4 Silver Pennies")

                ExchangeRateView(leftImage: .silverpenny, rightImage: .copperpenny, text: "1 Silver Penny = 100 Copper Pennies")

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
            .foregroundStyle(.black)
            
        } //: ZSTACK
    }
}


// MARK: - PREVIEW

#Preview {
    ExchangeInfoView()
}
