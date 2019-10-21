//
//  DetailViewController.swift
//  Chapter12
//
//  Created by KHJ on 2019. 10. 7..
//  Copyright © 2019년 KHJ. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var receiveItem = ""

    @IBOutlet var lblItem: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblItem.text = receiveItem
    }
    
    func receiveItem(_ item: String)
    {
        receiveItem = item
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
