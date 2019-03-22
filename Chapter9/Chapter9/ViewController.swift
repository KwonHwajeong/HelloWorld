//
//  ViewController.swift
//  Chapter9
//
//  Created by KHJ on 2019. 3. 22..
//  Copyright © 2019년 KHJ. All rights reserved.
//

import UIKit

var images = ["01.png","02.png","03.png","04.png","05.png","06.png"]

class ViewController: UIViewController {
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        
        pageControl.pageIndicatorTintColor  = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red
        imgView.image = UIImage(named: images[0])
    }


    @IBAction func pageContol(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }
}

