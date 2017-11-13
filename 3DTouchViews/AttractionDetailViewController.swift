//
//  AttractionDetailViewController.swift
//  3DTouchViews
//
//  Created by Jacob Burke on 11/13/17.
//  Copyright © 2017 Jacob Burke. All rights reserved.
//

import UIKit

class AttractionDetailViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    var webSite : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let address = webSite {
            let webURL = URL(string: address)
            let urlRequest = URLRequest(url: webURL!)
            webView.loadRequest(urlRequest)
            
            
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
