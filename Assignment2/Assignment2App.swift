//
// Assignment2App.swift : Assignment2
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

@main
struct Assignment2App: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                List {
                    NavigationLink(destination: Converter()) {
                        Text("World Currency Exchange")
                    }
                    NavigationLink(destination: CryptoConverter()) {
                        Text("Crypto Exchange")
                    }
                }
                .navigationBarTitle("Conversion App")
            }
        }
    }
}
