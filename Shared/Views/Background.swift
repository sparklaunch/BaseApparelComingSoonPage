//
//  Background.swift
//  BaseApparelComingSoonPage (iOS)
//
//  Created by Jinwook Kim on 2022/03/31.
//

import SwiftUI

struct Background: View {
    var body: some View {
        LinearGradient(colors: [.white, Color("BackgroundColor")], startPoint: .top, endPoint: .bottom)
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
            .previewLayout(.fixed(width: 100, height: 100))
    }
}
