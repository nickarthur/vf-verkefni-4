//
//  ContentView.swift
//  Verkefni 4
//
//  Created by Reynir Aron on 01/10/2019.
//  Copyright © 2019 Reynir Aron. All rights reserved.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    var body: some View {
        return ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Hlaða inn Mickey anchor senu (lógó)
        let logo = try! Mickey.loadScene()
        
        // Bæta Mickey anchor við arView senuna
        arView.scene.anchors.append(logo)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
