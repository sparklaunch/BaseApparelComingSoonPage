//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/03/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {
            Background()
                .ignoresSafeArea()
            VStack {
                Logo()
                Hero()
                Title()
                    .padding()
                EmailForm()
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
