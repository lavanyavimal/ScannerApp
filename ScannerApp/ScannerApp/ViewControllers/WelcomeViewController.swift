//
//  WelcomeViewController.swift
//  ScannerApp
//
//  Created by Lavanya on 6/29/18.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    //ViewController lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func onlineCheckInClicked(_ sender: Any) {
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: "ScanCardViewController")
        
        //let navigationCtrl = UINavigationController(rootViewController: controller)
        
        self.navigationController?.pushViewController(controller, animated: true)
        
       // self.present(navigationCtrl, animated:true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
