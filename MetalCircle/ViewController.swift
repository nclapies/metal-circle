//
//  ViewController.swift
//  MetalCircle
//
//  Created by Nicolas Clapiès on 2022-07-31.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let metalView = MetalView()
        view.addSubview(metalView)
        
        metalView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        metalView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        metalView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        metalView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

