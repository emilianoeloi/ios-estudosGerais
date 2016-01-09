//
//  TrezeViewController.swift
//  ios-estudosGerais
//
//  Created by Emiliano Barbosa on 1/9/16.
//  Copyright © 2016 Emiliano E. S. Barbosa. All rights reserved.
//

import UIKit



class TrezeViewController : UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var cityName: UITextField!
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func searchWeather(sender: AnyObject) {
        
        let url = NSURL(string: "http://www.weather-forecast.com/locations/{cityName}/forecasts/latest".stringByReplacingOccurrencesOfString("{cityName}", withString: cityName.text!).stringByReplacingOccurrencesOfString(" ", withString: "-"))
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) { (data, response, error) -> Void in
            if let content = data {
                let html = NSString(data: content, encoding: NSUTF8StringEncoding)
                let html1 = html?.componentsSeparatedByString("Forecast Summary:</b><span class=\"read-more-small\"><span class=\"read-more-content\"> <span class=\"phrase\">")
                let html2 = html1![1].componentsSeparatedByString("</span>")
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    self.textView?.text = html2[0]
                })
                
            }
        }
        task.resume()
        cityName.resignFirstResponder()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        cityName.resignFirstResponder()
        return true;
    }

}