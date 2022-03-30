//
//  Title.swift
//  BaseApparelComingSoonPage (iOS)
//
//  Created by Jinwook Kim on 2022/03/31.
//

import SwiftUI

struct Title: View {
    var body: some View {
        VStack {
            Text("WE'RE")
                .kerning(10)
                .font(.largeTitle)
                .fontWeight(.light)
                .foregroundColor(Color("BodyColor"))
                .multilineTextAlignment(.center)
            Text("COMING SOON")
                .kerning(10)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("TitleColor"))
                .multilineTextAlignment(.center)
            Spacer()
                .frame(height: 30)
            Text("Hello fellow shoppers! We're currently building our new fashion store. Add your email below to stay up-to-date with announcements and our launch deals.")
                .font(.body)
                .fontWeight(.light)
                .foregroundColor(Color("BodyColor"))
                .lineSpacing(5)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title()
            .previewLayout(.sizeThatFits)
    }
}
