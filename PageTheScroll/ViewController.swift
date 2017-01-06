//
//  ViewController.swift
//  PageTheScroll
//
//  Created by Fiachra Coyne on 06/01/2017.
//  Copyright © 2017 Fiachra Coyne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scrollview: UIScrollView!
    var images = [UIImageView]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth: CGFloat = 0.0
        // Do any additional setup after loading the view, typically from a nib.
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = scrollview.frame.size.width / 2 + scrollview.frame.size.width * CGFloat(x)
            
            contentWidth += newX
            
            scrollview.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (scrollview.frame.size.height / 2) - 75, width: 150, height: 150)
        }
        
        
        scrollview.clipsToBounds = false
        
        scrollview.contentSize =  CGSize(width: contentWidth, height: view.frame.size.height)
    }
}

