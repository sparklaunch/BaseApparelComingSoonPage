//
//  ErrorIcon.swift
//  BaseApparelComingSoonPage (iOS)
//
//  Created by Jinwook Kim on 2022/04/01.
//

import SwiftUI

struct ErrorIcon: View {
    var body: some View {
        Image("Error")
            .resizable()
            .frame(width: 24, height: 24)
    }
}

struct ErrorIcon_Previews: PreviewProvider {
    static var previews: some View {
        ErrorIcon()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
