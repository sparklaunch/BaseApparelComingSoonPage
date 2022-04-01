//
//  CustomTextFieldStyle.swift
//  BaseApparelComingSoonPage (iOS)
//
//  Created by Jinwook Kim on 2022/03/31.
//

import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle {
    @Binding var isInvalid: Bool
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous).strokeBorder(Color(isInvalid ? "WarningColor" : "BodyColor"), lineWidth: isInvalid ? 2 : 1))
            .background(.white.opacity(.zero))
    }
}
