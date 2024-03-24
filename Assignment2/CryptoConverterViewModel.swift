//
//  CryptoConverterViewModel.swift
//  Assignment2
//
//  Created by Amenda Kang on 3/23/24.
//

import Foundation

class CryptoConverterViewModel : ObservableObject {
    
    @Published private(set) var listOfCryptos = [CryptoConvertModel]()
    
    func fetchCryptos() {
        self.listOfCryptos = [
            CryptoConvertModel(cryptoContent: CryptoItemModel(cryptoName: "Ethereum", multiplier: 19.21, cryptoAmt: 19.21)),
            CryptoConvertModel(cryptoContent: CryptoItemModel(cryptoName: "Tether", multiplier: 64626, cryptoAmt: 64626)),
            CryptoConvertModel(cryptoContent: CryptoItemModel(cryptoName: "BNB", multiplier: 116.059, cryptoAmt: 116.059)),
            CryptoConvertModel(cryptoContent: CryptoItemModel(cryptoName: "USD Coin", multiplier: 64558.55, cryptoAmt: 64558.55)),
            CryptoConvertModel(cryptoContent: CryptoItemModel(cryptoName: "XRP", multiplier: 104073, cryptoAmt: 104073))
        ]
    }
    
    func updateRows(amount: Double) {
        for index in listOfCryptos.indices {
            listOfCryptos[index].cryptoContent.cryptoAmt = listOfCryptos[index].cryptoContent.multiplier * amount
        }
    }
}
