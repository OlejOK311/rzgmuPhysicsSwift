//
//  PDFViewController.swift
//  rzgmuPhysics
//
//  Created by Олег Плаксин on 16.01.2022.
//

import UIKit
import WebKit

class PDFViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.delegate = self
        webView.scalesPageToFit = true
        
        if let urlPdf = Bundle.main.url(forResource: "lab4", withExtension: "pdf") {
            let request = URLRequest(url: urlPdf)
            
            webView.loadRequest(request)
        }
        
    }

}
