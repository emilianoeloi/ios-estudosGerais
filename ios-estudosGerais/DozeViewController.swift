//
//  DozeViewController.swift
//  ios-estudosGerais
//
//  Created by Emiliano Barbosa on 1/9/16.
//  Copyright © 2016 Emiliano E. S. Barbosa. All rights reserved.
//

import UIKit



class DozeViewController : UIViewController{
    
    @IBOutlet weak var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainUrl = NSURL(string: "http://www.stackoverflow.com")
        let task = NSURLSession.sharedSession().dataTaskWithURL(mainUrl!) { (data, response, error) -> Void in
            if let urlContent = data {
                let web = NSString(data:urlContent, encoding:NSUTF8StringEncoding)
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    self.webview.loadHTMLString(String(web), baseURL: nil);
                })
                
            }else{
                
            }
        }
        
        task.resume()
    }
    
    func randomCode() -> Void{
        var str = "Emiliano"
        var newString = "Hello " + str
        for chars in newString.characters{
            print(chars)
        }
        var newTypeString = NSString(string:newString)
        newTypeString.substringFromIndex(5)
        newTypeString.substringToIndex(5)
        newTypeString.substringWithRange(NSRange(location: 5, length: 2))
        if (newTypeString.containsString("Emiliano")){
            print("YES")
        }else{
            print("NO")
        }
        newTypeString.componentsSeparatedByString(" ")
        newTypeString.uppercaseString
        
    }
    
}