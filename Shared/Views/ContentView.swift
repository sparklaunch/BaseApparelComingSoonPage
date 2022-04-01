//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/03/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: .zero) {
                ZStack(alignment: .top) {
                    Background()
                        .edgesIgnoringSafeArea(.all)
                    VStack {
                        Logo()
                        Hero()
                            .scaledToFill()
                        Title()
                            .padding()
                        EmailForm()
                            .padding()
                    }
                }
                Rectangle()
                    .fill(Color("BackgroundColor"))
                    .frame(height: 100)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .onAppear {
            UIScrollView.appearance().bounces = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
