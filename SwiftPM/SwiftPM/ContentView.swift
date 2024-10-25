//
//  ContentView.swift
//  SwiftPM
//
//  Created by Nivedha Rajendran on 25.10.24.
//

import SwiftUI
import SwiftTradingView
import MyPackage

struct ContentView: View {
    var body: some View {
        TradingView(
            data: [CandleData(time: 20.0, open: 3.0, close: 2.0, high: 3.0, low: 1.0, volume: 4.0)],
                    primaryContent: [
                        Candles(),
                        MAIndicator(),
                        BBIndicator(),
                    ],
                    secondaryContent: [
                        MACDIndicator(),
                        RSIIndicator()
                    ]
                )
        Text(MyPackage.Utilities.greet(name: "SwiftPM"))
    }
}

#Preview {
    ContentView()
}
