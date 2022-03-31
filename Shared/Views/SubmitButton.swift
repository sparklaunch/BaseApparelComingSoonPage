//
//  SubmitButton.swift
//  BaseApparelComingSoonPage (iOS)
//
//  Created by Jinwook Kim on 2022/03/31.
//

import SwiftUI

struct SubmitButton: View {
    var body: some View {
        Image(decorative: "Arrow")
            .resizable()
            .frame(width: 12, height: 20)
            .padding(EdgeInsets(top: 15, leading: 30, bottom: 15, trailing: 30))
            .background(
                LinearGradient(colors: [Color("ButtonLeftGradientColor"), Color("ButtonRightGradientColor")], startPoint: .leading, endPoint: .trailing)
            )
            .clipShape(Capsule())
            .shadow(radius: 10)
    }
}

struct SubmitButton_Previews: PreviewProvider {
    static var previews: some View {
        SubmitButton()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
