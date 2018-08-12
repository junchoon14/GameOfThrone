//
//  WebViewController.swift
//  GameOfThrone
//
//  Created by Jason Hsu on 2018/8/12.
//  Copyright © 2018 junchoon. All rights reserved.
//

import UIKit
import WebKit


class WebViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    @IBAction func goBack(_ sender: Any) {
        webView!.goBack()
    }
    @IBAction func goForward(_ sender: Any) {
        webView!.goForward()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

       let url = URL(string: "http://zh.asoiaf.wikia.com/wiki/%E5%86%B0%E4%B8%8E%E7%81%AB%E4%B9%8B%E6%AD%8C%E4%B8%AD%E6%96%87%E7%BB%B4%E5%9F%BA")
        let request = URLRequest(url: url!)
        webView!.load(request)
       
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
