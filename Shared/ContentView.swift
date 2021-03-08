//
//  ContentView.swift
//  Shared
//
//  Created by Erik Mikac on 3/7/21.
//Day 33 of Hacking with Swift.
/*
 Bottom Line: It MATTERS how you apply your animation modifiers.
 */
import SwiftUI

struct ContentView: View {
    @State private var enabled = false
    var body: some View {
        Button("Tap Me") {
            self.enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? Color.blue : Color.red)
        .animation(enabled ? .default : nil)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60: 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1))
 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
