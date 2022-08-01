//
//  MetalView.swift
//  MetalCircle
//
//  Created by Nicolas Clapiès on 2022-07-31.
//

// Check these links :
// https://betterprogramming.pub/making-your-first-circle-using-metal-shaders-1e5049ec8505
//
// This one from apple is more importamt :
// https://developer.apple.com/documentation/metal/using_a_render_pipeline_to_render_primitives

import Cocoa
import MetalKit

class MetalView: NSView {

    private var mv: MTKView!
    
    public required init() {
        super.init(frame: .zero)
        setupView()
        setupMetal()
    }
    
    public required init?(coder: NSCoder) {
        fatalError()
    }
    
    fileprivate func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
    }

    fileprivate func setupMetal() {
        mv = MTKView()
        addSubview(mv)
        mv.translatesAutoresizingMaskIntoConstraints = false
        mv.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        mv.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        mv.topAnchor.constraint(equalTo: topAnchor).isActive = true
        mv.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        mv.delegate = self
    }
    
}

extension MetalView : MTKViewDelegate {
    func mtkView(_ view: MTKView, drawableSizeWillChange size: CGSize) {
        // not worried about this
    }
    
    func draw(in view: MTKView) {
        // This is where we do all our drawings
    }
    
}
