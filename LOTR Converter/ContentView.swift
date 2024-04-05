//
//  ContentView.swift
//  LOTR Converter
//
//  Created by Chad Eymard on 3/25/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showExchangeInfo: Bool = false
    @State private var showSelectCurrency: Bool = false
    
    @State private var leftAmount: String = ""
    @State private var rightAmount: String = ""
    
    @State var leftCurrency: Currency = .silverPiece
    @State var rightCurrency: Currency = .goldPenny
    
    var body: some View {
        ZStack {
            Image(.background)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                
            VStack(alignment: .center, content: {
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    
                Text("Currency Exchange")
                    .foregroundStyle(.colorLightBrown)
                    .font(.largeTitle)
                    
                Spacer()
                    // Currency conversion section
                HStack {
                    
                    Group {
                        // Left conversion section
                        VStack {
                            // Currency
                            HStack {
                                // Currency image
                                Image(leftCurrency.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 33)
                                
                                // Currency text
                                Text(leftCurrency.name)
                                    .font(.headline)
                                    .foregroundStyle(.colorLightBrown)
                            } //: HSTACK
                            .padding(.bottom, -3)
                            .onTapGesture {
                                showSelectCurrency.toggle()
                            }
                            
                            // Left TextField
                            TextField("Amount", text: $leftAmount)
                                .modifier(TextFieldModifier())
                            
                        } //: VSTACK
                        
                        // Equal Sign
                        Image(systemName: "equal")
                            .foregroundColor(.colorLightBrown)
                            .font(.largeTitle)
                            .symbolEffect(.pulse)
                        
                        // Right conversion section
                        VStack {
                            // Currency
                            HStack {
                                // Currency text
                                Text(rightCurrency.name)
                                    .font(.headline)
                                    .foregroundStyle(.colorLightBrown)
                                
                                // Currency image
                                Image(rightCurrency.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 33)
                                
                            } //: HSTACK
                            .padding(.bottom, -3)
                            .onTapGesture {
                                showSelectCurrency.toggle()
                            }
                            
                            // Right TextField
                            TextField("Amount", text: $rightAmount)
                                .modifier(TextFieldModifier())
                                .multilineTextAlignment(.trailing)
                            
                        } //: VSTACK
                    } //: GROUP
                    .padding(.bottom, 25)
                    
                    
                } //: HSTACK
                .padding()
                .background(.black.opacity(0.3))
                .cornerRadius(20)
                    
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                    
                // Info button
                HStack() {
                    Spacer()
                    Button(action: {
                        showExchangeInfo.toggle()
                    }, label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.colorLightBrown)
                    })
                    .padding(.trailing)
                    .padding(.bottom, 25)
                    
                } //: HSTACK
            }) //: VSTACK
            .frame(maxWidth: UIScreen.screenWidth)
        } //: ZSTACK
        .sheet(isPresented: $showExchangeInfo, content: {
            ExchangeInfoView()
        })
        .sheet(isPresented: $showSelectCurrency, content: {
            SelectCurrencyView(topCurrency: $leftCurrency, bottomCurrency: $rightCurrency)
        })
        
    }

}

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .textFieldStyle(.roundedBorder)
            .cornerRadius(12)
    }
}

#Preview {
    ContentView()
}
