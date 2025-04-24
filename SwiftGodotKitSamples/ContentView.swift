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
                .environment(\.godotApp, app)
        }
        .onAppear {
            let dir = Bundle.main.resourcePath ?? "."
            let file = "\(dir)/main.pck"
            let p = try! Data(contentsOf: URL(filePath: file))
            print("path is: \(Bundle.main.resourcePath)")
            let e = FileManager.default.enumerator(atPath: Bundle.main.resourcePath ?? ".")
            while let file = e?.nextObject() {
                print (file)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
