//
//  WarningText.swift
//  BaseApparelComingSoonPage (iOS)
//
//  Created by Jinwook Kim on 2022/04/01.
//

import SwiftUI

struct WarningText: View {
    var body: some View {
        Text("Please provide a valid email")
            .font(.subheadline)
            .fontWeight(.regular)
            .foregroundColor(Color("WarningColor"))
    }
}

struct WarningText_Previews: PreviewProvider {
    static var previews: some View {
        WarningText()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
