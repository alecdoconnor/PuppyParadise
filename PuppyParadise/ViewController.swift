//
//  ViewController.swift
//  PuppyParadise
//
//  Created by Alec O'Connor on 10/10/17.
//  Copyright © 2017 Alec O'Connor. All rights reserved.
//

import UIKit
import AOModalStatus

class ViewController: UIViewController {

    @IBAction func saveTapped(_ sender: Any) {
        presentModalStatusView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func presentModalStatusView() {
        let modalView = AOModalStatusView(frame: self.view.bounds)
        let downloadImage = UIImage(named: "download") ?? UIImage()
        modalView.set(image: downloadImage)
        modalView.set(headline: "Downloading")
        view.addSubview(modalView)
    }

}

