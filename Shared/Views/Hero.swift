//
//  Hero.swift
//  BaseApparelComingSoonPage (iOS)
//
//  Created by Jinwook Kim on 2022/03/31.
//

import SwiftUI

struct Hero: View {
    var body: some View {
        Image(decorative: "Hero")
            .resizable()
            .scaledToFit()
    }
}

struct Hero_Previews: PreviewProvider {
    static var previews: some View {
        Hero()
            .previewLayout(.sizeThatFits)
    }
}
