//
//  TextTestView.swift
//  unitTesting
//
//  Created by CHANG JIN LEE on 2023/07/20.
//

import SwiftUI

struct TextTestView: View {
    @StateObject private var vm = ViewModel()

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TextTestView_Previews: PreviewProvider {
    static var previews: some View {
        TextTestView()
    }
}
