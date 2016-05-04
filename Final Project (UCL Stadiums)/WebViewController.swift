
import Foundation

import UIKit

class WebViewController: UIViewController  {
  
    
    @IBOutlet var webView: UIWebView!

    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        let url = NSURL(string: "http://reddit.com/r/soccer/")
        let requestObj = NSURLRequest(URL: url!)
        
        webView?.loadRequest(requestObj)
        
        webView.userInteractionEnabled = true
        webView.scrollView.scrollEnabled = true
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
   
    }

}


    
    
