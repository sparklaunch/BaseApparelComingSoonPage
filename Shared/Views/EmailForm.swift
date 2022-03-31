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
        Form {
            HStack {
                TextField("wow", text: $emailInput)
                Button {

                } label: {
                    SubmitButton()
                }
            }
        }
        .scaledToFit()
    }
}

struct EmailForm_Previews: PreviewProvider {
    static var previews: some View {
        EmailForm()
            .previewLayout(.sizeThatFits)
    }
}
