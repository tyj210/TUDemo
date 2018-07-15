//
//  HistoryView.swift
//  QRCodeReader
//
//  Created by Tychicus C Jones on 5/24/17.
//  Copyright © 2017 Tychicus Jones Jr. All rights reserved.
//

import UIKit
import AVFoundation

class HistoryView: UIViewController, AVCaptureMetadataOutputObjectsDelegate {
    
    @IBOutlet var textHistory:UITextView!
    //var previousViewController: QRScannerController?
    var messagetext: String?
    
    @IBAction func unwindToHomeScreen(segue: UIStoryboardSegue) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func toMaps(segue: UIStoryboardSegue) {
        let vc3: UIViewController = storyboard!.instantiateViewController(withIdentifier: "front") //as! UIViewController
        
        self.present(vc3, animated: true, completion: nil)
    }

    override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            
            
        //let  messageLabel = previousViewController?.transferViewControllerVariables()
        //print(messageLabel.text as Any)
        textHistory.text = messagetext
        
        }
        
        // Do any additional setup after loading the view.


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
