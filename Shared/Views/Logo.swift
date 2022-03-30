//
//  Logo.swift
//  BaseApparelComingSoonPage (iOS)
//
//  Created by Jinwook Kim on 2022/03/31.
//

import SwiftUI

struct Logo: View {
    var body: some View {
        HStack {
            Image("Logo")
                .resizable()
                .frame(width: 158, height: 33)
            Spacer()
        }
        .padding(30)
    }
}

struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        Logo()
            .previewLayout(.sizeThatFits)
    }
}
