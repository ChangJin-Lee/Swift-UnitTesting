//
//  TextTestView.swift
//  unitTesting
//
//  Created by CHANG JIN LEE on 2023/07/20.
//

import SwiftUI

struct TextTestView: View {
    @StateObject private var vm = ViewModel ()
    var body: some View {
        Form {
            VStack(spacing: 20) {
                Text ("\(vm.convertedText)")
                    .font(.headline)
                TextField("Enter a value.", text: $vm.text)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType (.decimalPad)
                    .submitLabel(.done)
                Button("Convert", action: vm.convertMoney)
                    .buttonStyle (.borderedProminent)
            }
            .padding()
        }
    }
}

struct TextTestView_Previews: PreviewProvider {
    static var previews: some View {
        TextTestView()
    }
}
