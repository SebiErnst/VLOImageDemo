//
//  ViewController.swift
//  VLOImageDemo
//
//  Created by Prowadzący on 04/01/17.
//  Copyright © 2017 KIS. All rights reserved.
//

import UIKit
import CoreImage

class ViewController: UIViewController {
    
    var image: UIImage!
    
    @IBOutlet weak var URLTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func goButtonPressed(_ sender: Any) {
        image = UIImage(ciImage: CIImage(contentsOf: URL(string: URLTextField.text!)!)!)
        imageView.image = image
    }
    
    @IBAction func detectFaces(_ sender: Any) {
        let detector = CIDetector(ofType: CIDetectorTypeFace, context: nil, options: [CIDetectorAccuracy: CIDetectorAccuracyHigh])
        let faces = detector!.features(in: image.ciImage!)
        debugPrint(faces[0].bounds)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

