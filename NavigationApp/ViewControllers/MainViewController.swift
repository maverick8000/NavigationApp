//
//  MainViewController.swift
//  NavigationApp
//
//  Created by Consultant on 7/5/22.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var modalPresentationButton: UIButton!
    
    @IBOutlet weak var navigationConttollerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        print("Start of prepare call")
        if segue.identifier == "ModalSegue"
        {
            guard let vc = segue.destination as? DetailViewController else {return}
            
            print("Setting UI on detail screen")
            
            vc.text = "Modal Segue"
            vc.imageStr = "bluedragon"
            vc.showDismissButton = true
            vc.delegate = self
            
        } else if segue.identifier == "ShowSegue" {
            
            guard let vc = segue.destination as? DetailViewController else {return}
            
            vc.text = "Show Segue"
            vc.imageStr = "reddragon"
            vc.showDismissButton = false
            vc.delegate = self
            
        }
        
    }
    
    
    @IBAction func modalPresentationButtonPressed(_ sender: UIButton) {
        
        print("Modal Button Pressed")
        self.performSegue(withIdentifier: "ModalSegue", sender: nil)
    }
    
    @IBAction func navigationControllerButtonPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "ShowSegue", sender: nil)
        
    }
    
    @IBAction func nonSegueModalButtonPressed(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        guard let vc = storyBoard.instantiateViewController(withIdentifier: "DetailNonSegueViewController") as? DetailNonSegueViewController else {return}
        
        vc.text = "Non Segue Modal Presentation"
        
        self.present(vc, animated: true, completion: nil)
        
    }
    
    @IBAction func nonSegueNavigationButtonPressed(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        guard let vc = storyBoard.instantiateViewController(withIdentifier: "DetailNonSegueViewController") as? DetailNonSegueViewController else {return}
        
        vc.text = "Non Segue Navigation Presentation"
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    

}

extension MainViewController: DismissDetailDelegate {
    
    func dismissDetail() {
        print("View Controller actually dismissed")
        self.dismiss(animated: true, completion: nil)
    }
    
}
