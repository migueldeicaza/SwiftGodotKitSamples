//
//  ContentView.swift
//  SwiftGodotKitSamples
//
//  Created by Miguel de Icaza on 4/24/25.
//
import Foundation
import SwiftUI
import SwiftGodotKit

struct ContentView: View {
    @State var app: GodotApp = GodotApp(packFile: "main.pck")
    var body: some View {
        VStack {
            Text("The image below is a Godot game:")
            GodotAppView()
            Divider()
            Text("This is a Godot button embedded:")
            GodotWindow { host in
                createGodotContent(in: host)
            }
        }
        .environment(\.godotApp, app)
        .padding()
    }
}

#Preview {
    ContentView()
}
