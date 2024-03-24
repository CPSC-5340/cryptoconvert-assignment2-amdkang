//
//  CryptoConverter.swift
//  Assignment2
//
//  Created by Amenda Kang on 3/23/24.
//

import SwiftUI

struct CryptoConverter: View {
    @ObservedObject var viewModel = CryptoConverterViewModel()
    @State var amountStr: String = ""
    @State var amountDbl: Double = 0
    
    var body: some View {
        VStack {
            HStack {
                Text("Bitcoin:")
                TextField("", text: $amountStr)
                    .border(Color.gray)
                    .textFieldStyle(.roundedBorder)
                    .onChange(of: amountStr) { str in
                        if let strToDbl = Double(str) {
                            amountDbl = strToDbl
                        }
                        viewModel.updateRows(amount: amountDbl)
                    }
            }
            .padding(.horizontal, 35)
            
            Spacer()
            List {
                ForEach(viewModel.listOfCryptos) { crypto in
                    CryptoCurrencyItem(crypto: crypto)
                }
            }
        }
        .onAppear {
            viewModel.fetchCryptos()
        }
        .onTapGesture {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    }
}


#Preview {
    CryptoConverter()
}
