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
            return "양수를 입력해주세요."
        }
        if KRWValue >= 1_000_000_000 {
            return "너무 큰 수를 입력했어요!"
        }
        return "$\(String(format: "%.2f", KRWValue * usdRate))"
    }
}
