//
//  ViewController.swift
//  Cassini
//
//  Created by leaco on 2019/10/27.
//  Copyright © 2019 Leaco. All rights reserved.
//

import UIKit
import Foundation

class ImageViewController: UIViewController {

    
    var imageURL: URL? {
        didSet{
            self.imageView.image = nil
            if view.window != nil{
                self.fetchImage()
            }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if imageView.image == nil{
            fetchImage()
        }
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    private func fetchImage(){
        if let url = imageURL {
            let urlContents = try? Data(contentsOf: url)
            if let imageData = urlContents {
                imageView.image = UIImage(data: imageData)
            }
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if imageURL == nil {
            imageURL = DemoURLs.stanford
        }
    }
    
}
