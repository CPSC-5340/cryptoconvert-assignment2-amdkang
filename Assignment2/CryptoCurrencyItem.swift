//
//  CryptoCurrencyItem.swift
//  Assignment2
//
//  Created by Amenda Kang on 3/23/24.
//

import SwiftUI

struct CryptoCurrencyItem: View {
    var crypto : CryptoConvertModel
    
    var body: some View {
        CryptoItem(crypto: crypto.cryptoContent)
    }
}

struct CryptoCurrencyItem_Previews: PreviewProvider {
    static var previews: some View {
        CryptoCurrencyItem(crypto: CryptoConvertModel(cryptoContent: CryptoItemModel(cryptoName: "", multiplier: 1, cryptoAmt: 1)))
    }
}

struct CryptoItem: View {
    var crypto: CryptoItemModel
    var body: some View {
        HStack {
            Text(crypto.cryptoName)
            Spacer()
            Text(String(crypto.cryptoAmt))
        }
    }
}
