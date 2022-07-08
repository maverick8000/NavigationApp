//
//  DetailNonSegueViewController.swift
//  NavigationApp
//
//  Created by Consultant on 7/6/22.
//

import UIKit

class DetailNonSegueViewController: UIViewController {

    @IBOutlet weak var nonSegueLabel: UILabel!
    
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.nonSegueLabel.text = self.text
        
        // Do any additional setup after loading the view.
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
