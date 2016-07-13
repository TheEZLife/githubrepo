//
//  ViewController.swift
//  lecture 54
//
//  Created by Eli Zafrani on 6/26/16.
//  Copyright (c) 2016 Eli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = NSURL(string: "http://www.stackoverflow.com")
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {
            (data, response, error) in
            
            if error == nil {
                
                var urlContent = NSString(data: data, encoding: NSUTF8StringEncoding)
                
                println(urlContent)
                
                self.webView.loadHTMLString(urlContent! as String, baseURL: nil)
            }
            
       
            
                
        }
        
        task.resume()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}