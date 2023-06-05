//
//  ContentView.swift
//  InteractiveHeart
//
//  Created by Joseph Langat on 05/06/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var colorChange = false
    @State private var sizeChange = false
    @State private var animationAmount = 1.0
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 100))
            .foregroundColor(colorChange ? .yellow : .red)
            .overlay(
                Image(systemName: "heart.fill")
                    .font(.system(size: 100))
                    .foregroundColor(.red)
                    .scaleEffect(animationAmount)
                    .opacity(2 - animationAmount)
                    .animation(
                        .easeInOut(duration: 1)
                        .repeatForever(autoreverses: false),
                        value: animationAmount)
            )
//            .overlay(
//                Circle()
//                    .stroke(.red)
//                    .scaleEffect(animationAmount)
//                    .opacity(2 - animationAmount)
//                    .animation(
//                        .easeInOut(duration: 1)
//                        .repeatForever(autoreverses: false),
//                        value: animationAmount
//                    )
//            )
            .onAppear {
                animationAmount = 2
            }
            .scaleEffect(sizeChange ? 1.5 : 1)
            .animation(
                .easeInOut(duration:1)
                .repeatForever(autoreverses: true),
                value: animationAmount)
            .onTapGesture {
                self.colorChange.toggle()
            }
            .onLongPressGesture {
                self.sizeChange.toggle()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
