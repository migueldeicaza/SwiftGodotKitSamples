//
//  GodotContent.swift
//  SwiftGodotKitSamples
//
//  Created by Miguel de Icaza on 4/26/25.
//
import SwiftGodot

@Godot
class Demo: Node3D {
    var x = 0

    public func simple() {
        x += 1
    }
}

@MainActor
func createGodotContent(in host: Node) {
    let ctr = SwiftGodot.VBoxContainer()
    ctr.setAnchorsPreset(SwiftGodot.Control.LayoutPreset.fullRect)
    host.addChild(node: ctr)
    var times = 0

    let button1 = SwiftGodot.Button()
    button1.text = "Godot Button"
    button1.pressed.connect {
        times += 1
        button1.text = " I have been tapped \(times)"
        for x in 0..<10000 {
            var j = Demo()
            j.simple()
        }
    }
    let button2 = Button()
    button2.text = "Another Godot Button"

    ctr.addChild(node: button1)
    ctr.addChild(node: button2)
}
