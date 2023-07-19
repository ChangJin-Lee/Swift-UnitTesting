//
//  Converters.swift
//  unitTesting
//
//  Created by CHANG JIN LEE on 2023/07/20.
//

import Foundation

class Converters {
    func convertKRWToUSD(KRW: String) -> String {
    let usdRate = 0.00079
    let KRWValue = Double(KRW) ?? 0

        if KRWValue <= 0 {
            return "Please enter a positive number."
        }
        if KRWValue >= 1_000_000 {
            return "Value too big to convert!"
        }
        return "$\(String(format: "%.2f", KRWValue * usdRate))"
    }
}
