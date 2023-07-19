//
//  TextViewModel.swift
//  unitTesting
//
//  Created by CHANG JIN LEE on 2023/07/20.
//

import Foundation
import UIKit

final class ViewModel: ObservableObject {
    @Published var text = ""
    @Published var convertedText = "$0"
    private let converter = Converters()

    func convertMoney () {
        self.convertedText = converter.convertKRWToUSD(KRW: text)
        self.hideKeyboard()
    }

    private func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil,
                                          from: nil, for: nil)
    }
}
