//
//  DataViewController.swift
//  SBS2
//
//  Created by Jacek Kalamarz on 3/13/19.
//  Copyright © 2019 Jacek Kalamarz. All rights reserved.
//

import UIKit
import WebKit

class DataViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var dataLabel: UILabel!
    var dataObject: String = ""
    var dataUrl: String = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.dataLabel!.text = dataObject
        let myRequest = URLRequest(url: URL(string:self.dataUrl)!)
        self.webView.load(myRequest)
    }


}

