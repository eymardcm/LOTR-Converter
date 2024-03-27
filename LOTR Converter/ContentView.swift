//
//  ContentView.swift
//  LOTR Converter
//
//  Created by Chad Eymard on 3/25/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showExchangeInfo: Bool = false
    @State private var leftAmount: String = ""
    @State private var rightAmount: String = ""
    
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
                                Image(.copperpenny)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 33)
                                
                                // Currency text
                                Text("Copper Penny")
                                    .font(.headline)
                                    .foregroundStyle(.colorLightBrown)
                            } //: HSTACK
                            .padding(.bottom, -3)
                            
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
                                Text("Silver Piece")
                                    .font(.headline)
                                    .foregroundStyle(.colorLightBrown)
                                
                                // Currency image
                                Image(.silverpiece)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 33)
                                
                            } //: HSTACK
                            .padding(.bottom, -3)
                            
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
