//
//  EmailForm.swift
//  BaseApparelComingSoonPage (iOS)
//
//  Created by Jinwook Kim on 2022/03/31.
//

import SwiftUI

struct EmailForm: View {
    @State private var emailInput: String = ""
    var body: some View {
        ZStack {
            TextField("Email Address", text: $emailInput)
                .textFieldStyle(CustomTextFieldStyle())
                .foregroundColor(Color("BodyColor"))
                .keyboardType(.emailAddress)
            HStack {
                Spacer()
                Button {

                } label: {
                    SubmitButton()
                }
            }
        }
        .padding()
    }
}

struct EmailForm_Previews: PreviewProvider {
    static var previews: some View {
        EmailForm()
            .previewLayout(.sizeThatFits)
            .background(Color("BackgroundColor"))
    }
}
