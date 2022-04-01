//
//  EmailForm.swift
//  BaseApparelComingSoonPage (iOS)
//
//  Created by Jinwook Kim on 2022/03/31.
//

import SwiftUI

struct EmailForm: View {
    @State private var emailInput: String = ""
    @State private var emailWarning: Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            ZStack {
                TextField("Email Address", text: $emailInput)
                    .textFieldStyle(CustomTextFieldStyle(isInvalid: $emailWarning))
                    .foregroundColor(Color("BodyColor"))
                    .keyboardType(.emailAddress)
                    .onSubmit {
                        submitEmail()
                    }
                HStack {
                    Spacer()
                    ErrorIcon()
                        .opacity(emailWarning ? 1 : .zero)
                    Spacer()
                        .frame(width: 10)
                    Button {
                        submitEmail()
                    } label: {
                        SubmitButton()
                    }
                }
            }
            .padding(.horizontal, 20)
            WarningText()
                .opacity(emailWarning ? 1 : .zero)
                .padding(.horizontal, 36)
        }
    }
    func submitEmail() -> Void {
        if isEmailValid() {
            withAnimation(.easeInOut(duration: 0.3)) {
                emailWarning = false
            }
            emailInput = ""
            // TODO: ACTUAL SUBMISSION TASK.
        }
        else {
            withAnimation(.easeInOut(duration: 0.3)) {
                emailWarning = true
            }
        }
    }
    func isEmailValid() -> Bool {
        let emailValidator: String = "(?:[\\p{L}0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[\\p{L}0-9!#$%\\&'*+/=?\\^_`{|}" + "~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\" + "x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[\\p{L}0-9](?:[a-" + "z0-9-]*[\\p{L}0-9])?\\.)+[\\p{L}0-9](?:[\\p{L}0-9-]*[\\p{L}0-9])?|\\[(?:(?:25[0-5" + "]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-" + "9][0-9]?|[\\p{L}0-9-]*[\\p{L}0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21" + "-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])"
        let emailPredicate: NSPredicate = NSPredicate(format: "SELF MATCHES %@", emailValidator)
        return emailPredicate.evaluate(with: emailInput)
    }
}

struct EmailForm_Previews: PreviewProvider {
    static var previews: some View {
        EmailForm()
            .previewLayout(.sizeThatFits)
            .background(Color("BackgroundColor"))
    }
}
