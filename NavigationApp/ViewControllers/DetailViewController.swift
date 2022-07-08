//
//  DetailViewController.swift
//  NavigationApp
//
//  Created by Consultant on 7/5/22.
//

import UIKit

protocol DismissDetailDelegate: AnyObject {
    
    func dismissDetail()
    
}

class DetailViewController: UIViewController {

    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var detailDismissButton: UIButton!
    
    var text: String?
    var imageStr: String?
    
    var delegate: DismissDetailDelegate?
    var showDismissButton: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.detailLabel.text = self.text
        self.detailImageView.image = UIImage(named: self.imageStr ?? "")
        
//        self.detailDismissButton.isEnabled = self.showDismissButton
//        self.detailDismissButton.isHidden = !self.showDismissButton
    }
    
    @IBAction func detailDismissButtonPressed(_ sender: UIButton) {
        
        print("dismissed button pressed")
        self.delegate?.dismissDetail()
        
        self.navigationController?.popViewController(animated: true)
        
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
